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
actor_classes <- as.character(nodes_df$actor_class[index_match])
actor_classes[is.na(actor_classes)] <- "Concept" 
network::set.vertex.attribute(net, "actor_class", actor_classes)

org_size_map <- c(
    "Micro (1 to 9 employees)" = 1,
    "Small (10 to 49 employees)" = 2,
    "Medium (50 to 249 employees)" = 3,
    "Large (250 or more)" = 4
)
size_vals <- org_size_map[as.character(nodes_df$organization_size[index_match])]
size_vals[is.na(size_vals)] <- 0
network::set.vertex.attribute(net, "organization_size", size_vals)

country_vals <- as.character(nodes_df$country[index_match])
country_vals[is.na(country_vals)] <- "Concept" 
network::set.vertex.attribute(net, "country", country_vals)

# Run model and capture diagnostics
m_multivariate <- ergm(net ~ edges + 
                 b1nodematch("actor_class") +   # Hyp 1: Attribute Homophily
                 b1cov("organization_size") +   # Hyp 2: Resource Centrality
                 b1nodematch("country") +       # Exogenous Control: Geographic homophily
                 gwb1degree(0.5, fixed=TRUE) +  
                 gwb2degree(0.5, fixed=TRUE),
    control = control.ergm(MCMC.samplesize=2000, MCMC.burnin=5000),
    verbose = FALSE
)

# Output summary
cat("\n--- MODEL SUMMARY ---\n")
print(summary(m_multivariate))

# Check for degeneracy issues
cat("\n--- CONVERGENCE CHECK ---\n")
# Check if the simulated stats are close to observed
# Since I can't look at plots easily, I'll print the MCMLE stats
# But summary() already does that.
# I'll check the iteration count to see if it hit limit.
