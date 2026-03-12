library(readr)
library(igraph)

# Load data
edges_df <- read_csv("src/classification_master_refined.csv")
nodes_df <- read_csv("src/actor_metadata_refined.csv")
edges_df$feedback_ref <- sub("_.*", "", edges_df$chunk_id)
edges_support <- subset(edges_df, stance == "SUPPORT")
bipartite_edgelist <- unique(edges_support[, c("feedback_ref", "concept_id")])

# 1. Create Bipartite Network Graph
bg <- graph_from_data_frame(bipartite_edgelist, directed = FALSE)
V(bg)$type <- V(bg)$name %in% bipartite_edgelist$concept_id

# Set node attributes for plotting
V(bg)$color <- ifelse(V(bg)$type, "lightblue", "salmon")
V(bg)$shape <- ifelse(V(bg)$type, "square", "circle")
V(bg)$size <- ifelse(V(bg)$type, 6, 4)
V(bg)$label <- NA # Remove labels for cleaner overview

# Plot and save bipartite network
png("overleaf-SNM-project-2026/bipartite_network.png", width=1200, height=800, res=150)
plot(bg, layout=layout_as_bipartite, 
     main="Bipartite Network: Actors (Red) and Policy Concepts (Blue)",
     edge.color=adjustcolor("grey50", alpha.f=0.5))
dev.off()

# 2. Extract and Save Degree Distribution of Actors
degrees_actors <- degree(bg, v=V(bg)[!V(bg)$type])
png("overleaf-SNM-project-2026/actor_degree_distribution.png", width=800, height=600, res=150)
hist(degrees_actors, breaks=20, col="salmon", main="Degree Distribution of Actors",
     xlab="Number of Supported Concepts", ylab="Frequency")
dev.off()

# 3. Extract and Save Degree Distribution of Concepts
degrees_concepts <- degree(bg, v=V(bg)[V(bg)$type])
png("overleaf-SNM-project-2026/concept_popularity.png", width=800, height=600, res=150)
hist(degrees_concepts, breaks=20, col="lightblue", main="Popularity Distribution of Concepts",
     xlab="Number of Supporting Actors", ylab="Frequency")
dev.off()

cat("Visualizations generated and saved to overleaf directory.\n")
