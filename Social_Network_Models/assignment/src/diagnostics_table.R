library(statnet)
library(readr)

# Data Ingestion
edges_df <- read_csv("src/classification_master_refined.csv")
nodes_df <- read_csv("src/actor_metadata_refined.csv")
edges_df$feedback_ref <- sub("_.*", "", edges_df$chunk_id)
edges_support <- subset(edges_df, stance == "SUPPORT")
bipartite_edgelist <- unique(edges_support[, c("feedback_ref", "concept_id")])
net <- network::network(bipartite_edgelist, directed = FALSE, bipartite = TRUE)

# Attribute Specification
vertex_names <- network::network.vertex.names(net)
index_match <- match(vertex_names, nodes_df$feedback_ref)
actor_names <- as.character(nodes_df$organization[index_match])
actor_classes <- as.character(nodes_df$actor_class[index_match])
actor_classes[is.na(actor_classes)] <- "Concept" 
org_sizes <- as.character(nodes_df$organization_size[index_match])
org_sizes[is.na(org_sizes)] <- "N/A"

network::set.vertex.attribute(net, "organization_name", actor_names)
network::set.vertex.attribute(net, "actor_class", actor_classes)
network::set.vertex.attribute(net, "org_size_label", org_sizes)

# Degree calculation
d <- degree(net, gmode="graph")
is_actor <- !is.na(index_match)

# Create a data frame for top actors
actor_stats <- data.frame(
    ID = vertex_names[is_actor],
    Organization = actor_names[is_actor],
    Degree = d[is_actor],
    Size = org_sizes[is_actor],
    Class = actor_classes[is_actor]
)

# Sort by degree
actor_stats <- actor_stats[order(-actor_stats$Degree), ]

cat("\n### Top 15 Actors by Degree (Network Centrality)\n\n")
cat("| Organization | Degree | Size Category | Actor Class |\n")
cat("| :--- | :--- | :--- | :--- |\n")
top_15 <- head(actor_stats, 15)
for(i in 1:nrow(top_15)) {
    cat(sprintf("| %s | %d | %s | %s |\n", 
        top_15$Organization[i], 
        top_15$Degree[i], 
        top_15$Size[i], 
        top_15$Class[i]))
}

cat("\n\n### Degree Statistics by Organization Size\n\n")
size_summary <- aggregate(Degree ~ Size, data=actor_stats, FUN=function(x) c(Mean=mean(x), Max=max(x), N=length(x)))
size_summary <- do.call(data.frame, size_summary)
names(size_summary) <- c("Size", "MeanDegree", "MaxDegree", "N")
size_summary <- size_summary[order(size_summary$MeanDegree, decreasing=TRUE), ]

cat("| Size Category | Mean Degree | Max Degree | Count |\n")
cat("| :--- | :--- | :--- | :--- |\n")
for(i in 1:nrow(size_summary)) {
    cat(sprintf("| %s | %.2f | %d | %d |\n", 
        size_summary$Size[i], 
        size_summary$MeanDegree[i], 
        size_summary$MaxDegree[i], 
        size_summary$N[i]))
}
