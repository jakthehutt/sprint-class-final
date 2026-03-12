library(readr)
library(igraph)
library(ggplot2)
library(dplyr)
library(tidyr)

# Load data
edges_df <- read_csv("src/classification_master_refined.csv")
nodes_df <- read_csv("src/actor_metadata_refined.csv")
edges_df$feedback_ref <- sub("_.*", "", edges_df$chunk_id)

# Filter edges to only include explicit 'SUPPORT' stances
edges_support <- subset(edges_df, stance == "SUPPORT")
bipartite_edgelist <- unique(edges_support[, c("feedback_ref", "concept_id")])

# 1. Create Bipartite Network Object
bg <- graph_from_data_frame(bipartite_edgelist, directed = FALSE)
V(bg)$type <- V(bg)$name %in% bipartite_edgelist$concept_id

# Attach Node Attributes (for mode 1: actors)
actor_nodes <- V(bg)[!V(bg)$type]$name
index_match <- match(actor_nodes, nodes_df$feedback_ref)

# Actor Class
actor_classes <- as.character(nodes_df$actor_class[index_match])
actor_classes[is.na(actor_classes)] <- "Unknown"
V(bg)[!V(bg)$type]$actor_class <- actor_classes

# Organization Size (Capacity)
org_size_map <- c(
    "Micro (1 to 9 employees)" = 1,
    "Small (10 to 49 employees)" = 2,
    "Medium (50 to 249 employees)" = 3,
    "Large (250 or more)" = 4
)
size_vals <- org_size_map[as.character(nodes_df$organization_size[index_match])]
size_vals[is.na(size_vals)] <- 1 # Default to 1 if NA
V(bg)[!V(bg)$type]$capacity <- size_vals

# Color mapping for actor classes
class_colors <- c(
    "Science" = "#1f77b4", 
    "SME_Industry" = "#ff7f0e", 
    "Big_Industry" = "#d62728", 
    "Associations" = "#2ca02c", 
    "Civil_Public" = "#9467bd",
    "Unknown" = "#7f7f7f"
)
V(bg)[!V(bg)$type]$color <- class_colors[V(bg)[!V(bg)$type]$actor_class]

# ==============================================================================
# PROJECTION 1: Actor-Actor Network (Visualizing Hypothesis 1 & 2)
# ==============================================================================
# Two actors are connected if they support the SAME policy concept.
proj <- bipartite_projection(bg, multiplicity = TRUE)
actor_net <- proj$proj1

# Filter isolated actors for a cleaner plot
actor_net_clean <- delete_vertices(actor_net, degree(actor_net) == 0)

png("overleaf-SNM-project-2026/fig/actor_projection.png", width=1400, height=1000, res=150)
plot(actor_net_clean,
     vertex.size = V(actor_net_clean)$capacity * 2.5 + 2, # Size by financial capacity (H2)
     vertex.color = V(actor_net_clean)$color,            # Color by actor class (H1)
     vertex.label = NA,
     edge.width = E(actor_net_clean)$weight * 0.5,       # Thicker edge = more shared concepts
     edge.color = adjustcolor("grey", alpha.f=0.3),
     layout = layout_with_fr,
     main = "Actor-Actor Network Projection\n(Linked by shared policy concepts)")
legend("bottomright", legend=names(class_colors), col=class_colors, pch=19, title="Actor Class", cex=0.8)
dev.off()

# ==============================================================================
# PROJECTION 2: Concept-Concept Network (Visualizing Hypothesis 3 Echo Chambers)
# ==============================================================================
# Two concepts are connected if they are supported by the SAME actor.
concept_net <- proj$proj2

png("overleaf-SNM-project-2026/fig/concept_projection.png", width=1400, height=1000, res=150)
plot(concept_net,
     vertex.size = degree(bg, v=V(concept_net)$name) * 0.5 + 4, # Size by popularity in original bipartite net
     vertex.color = "#17becf",
     vertex.label.cex = 0.6,
     vertex.label.color = "black",
     edge.width = E(concept_net)$weight * 0.1,
     edge.color = adjustcolor("grey", alpha.f=0.2),
     layout = layout_with_fr, # Fruchterman-Reingold pulls tightly knit "echo chambers" together
     main = "Concept-Concept Network Projection\n(Linked by shared advocates)")
dev.off()

# ==============================================================================
# HEATMAP: Actor Class vs Policy Concepts
# ==============================================================================
# Summarize the bipartite edges by actor_class and concept_id
heatmap_data <- bipartite_edgelist %>%
  left_join(nodes_df %>% select(feedback_ref, actor_class), by = "feedback_ref") %>%
  filter(!is.na(actor_class)) %>%
  group_by(actor_class, concept_id) %>%
  summarise(support_count = n(), .groups = "drop")

# Top 20 most popular concepts for cleaner visualization
top_concepts <- heatmap_data %>%
    group_by(concept_id) %>%
    summarise(total = sum(support_count)) %>%
    top_n(20, total) %>%
    pull(concept_id)

heatmap_data_filtered <- heatmap_data %>%
    filter(concept_id %in% top_concepts)

# Generate Heatmap
p <- ggplot(heatmap_data_filtered, aes(x = concept_id, y = actor_class, fill = support_count)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "whitesmoke", high = "darkred", name = "Number\nof Actors") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size=8),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        plot.title = element_text(hjust = 0.5, face="bold")) +
  labs(title = "Policy Concept Endorsement by Actor Class (Top 20 Concepts)")

ggsave("overleaf-SNM-project-2026/fig/actor_class_heatmap.png", plot = p, width=12, height=6, dpi=300, bg="white")

cat("Advanced Visualizations generated in fig/ directory.\n")
