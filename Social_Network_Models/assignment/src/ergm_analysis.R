library(statnet)
library(readr)
library(ergMargins)

# 1. Load the exported CSVs
edges_df <- read_csv("classification_master_refined.csv")
edges_df
nodes_df <- read_csv("actor_metadata_refined.csv")
nodes_df

# Extract feedback_ref from chunk_id
edges_df$feedback_ref <- sub("_.*", "", edges_df$chunk_id)

# 2. Filter edges to only include 'SUPPORT' stances
edges_support <- subset(edges_df, stance == "SUPPORT")
bipartite_edgelist <- unique(edges_support[, c("feedback_ref", "concept_id")])

# 3. Generate Bipartite Network
# We must ensure the 'node' column in nodes_df contains all Actors AND Concepts
net <- network::network(bipartite_edgelist, directed = FALSE, bipartite = TRUE)

# Add attributes
vertex_names <- network::network.vertex.names(net)
index_match <- match(vertex_names, nodes_df$feedback_ref)

# Fix missing actor classes (e.g. for concepts)
actor_classes <- as.character(nodes_df$actor_class[index_match])
actor_classes[is.na(actor_classes)] <- "Concept"
network::set.vertex.attribute(net, "actor_class", actor_classes)

# Map organization_size to numeric (e.g., 1 to 4), keeping '0' for concepts
org_size_map <- c(
    "Micro (1 to 9 employees)" = 1,
    "Small (10 to 49 employees)" = 2,
    "Medium (50 to 249 employees)" = 3,
    "Large (250 or more)" = 4
)
size_vals <- org_size_map[as.character(nodes_df$organization_size[index_match])]
size_vals[is.na(size_vals)] <- 0
network::set.vertex.attribute(net, "organization_size", size_vals)

# ---------------------------------------------------------
# Testing Hypotheses (ergm Syntax)
# ---------------------------------------------------------

# Hypothesis A: Testing Attribute Homophily
m_homophily <- ergm(net ~ edges + b1nodematch("actor_class"),
    control = control.ergm(main.method = "Stochastic"),
    verbose = TRUE
)
summary(m_homophily)

# Hypothesis B: Testing Resource Centrality
m_resources <- ergm(net ~ edges + b1cov("organization_size"),
    control = control.ergm(main.method = "Stochastic"),
    verbose = TRUE
)
summary(m_resources)

# Hypothesis C: Testing Structural Equivalence
m_closure <- ergm(net ~ edges + cycle(4),
    control = control.ergm(main.method = "Stochastic"),
    verbose = TRUE
)
summary(m_closure)

# Evaluate Goodness of Fit
plot(gof(m_closure))


# ---------------------------------------------------------
# Calculating Marginal Effects
# ---------------------------------------------------------

# Calculate Average Marginal Effects (AME) for Homophily
ergm.AME(model = m_homophily, var1 = "b1nodematch.actor_class")

# Scale at baseline probability
(ergm.AME(model = m_homophily, var1 = "b1nodematch.actor_class")[[1]] / network.density(net)) * 100
