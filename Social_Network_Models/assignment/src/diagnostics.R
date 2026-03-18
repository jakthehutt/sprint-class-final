library(statnet)
library(readr)

# Data Ingestion
edges_df <- read_csv("src/classification_master_refined.csv")
nodes_df <- read_csv("src/actor_metadata_refined.csv")

# Extract the primary key (feedback_ref) from chunk_id
edges_df$feedback_ref <- sub("_.*", "", edges_df$chunk_id)

# Filter edges to only include explicit 'SUPPORT' stances
edges_support <- subset(edges_df, stance == "SUPPORT")
bipartite_edgelist <- unique(edges_support[, c("feedback_ref", "concept_id")])

# Initialize the Bipartite Network Object
net <- network::network(bipartite_edgelist, directed = FALSE, bipartite = TRUE)

# Attribute Specification
vertex_names <- network::network.vertex.names(net)
index_match <- match(vertex_names, nodes_df$feedback_ref)

org_size_map <- c(
    "Micro (1 to 9 employees)" = 1,
    "Small (10 to 49 employees)" = 2,
    "Medium (50 to 249 employees)" = 3,
    "Large (250 or more)" = 4
)
size_vals <- org_size_map[as.character(nodes_df$organization_size[index_match])]
size_vals[is.na(size_vals)] <- 0
network::set.vertex.attribute(net, "organization_size", size_vals)

# Output Diagnostics
cat("Network Summary:\n")
print(net)

cat("\nTop 10 Nodes by Degree (Actors):\n")
d <- degree(net, gmode="graph")
names(d) <- vertex_names
# Filter for actors (Mode 1)
is_actor <- !is.na(index_match)
actor_degrees <- d[is_actor]
print(head(sort(actor_degrees, decreasing=TRUE), 10))

cat("\nTop 10 Nodes by Degree (Concepts):\n")
concept_degrees <- d[!is_actor]
print(head(sort(concept_degrees, decreasing=TRUE), 10))

cat("\nOrganization size distribution for actors:\n")
print(table(size_vals[is_actor], useNA="always"))

cat("\nCorrelation between actor degree and organization size:\n")
print(cor(actor_degrees, size_vals[is_actor]))
