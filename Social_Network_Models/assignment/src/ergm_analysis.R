library(statnet)
library(readr)
library(ergMargins)

# 1. Load the exported CSVs
edges_df <- read_csv("classification_master_refined.csv")
nodes_df <- read_csv("actor_metadata_refined.csv")

# 2. Filter edges to only include 'SUPPORT' stances
edges_support <- subset(edges_df, stance == "SUPPORT")
bipartite_edgelist <- edges_support[, c("feedback_ref", "concept_id")]

# 3. Generate Bipartite Network
# We must ensure the 'node' column in nodes_df contains all Actors AND Concepts
net <- network::network(bipartite_edgelist, directed = FALSE, bipartite = length(unique(edges_support$feedback_ref)))

# Add attributes
index_match <- match(network::network.vertex.names(net), nodes_df$feedback_ref)
network::set.vertex.attribute(net, "actor_class", as.character(nodes_df$user_type[index_match]))
network::set.vertex.attribute(net, "organization_size", as.numeric(nodes_df$total_budget[index_match]))

# ---------------------------------------------------------
# Testing Hypotheses (ergm Syntax)
# ---------------------------------------------------------

# Hypothesis A: Testing Attribute Homophily
m_homophily <- ergm(net ~ edges + b1nodematch("actor_class"),
                    control = control.ergm(main.method = "Stochastic"),
                    verbose = TRUE)
summary(m_homophily)

# Hypothesis B: Testing Resource Centrality
m_resources <- ergm(net ~ edges + b1cov("organization_size"),
                    control = control.ergm(main.method = "Stochastic"),
                    verbose = TRUE)
summary(m_resources)

# Hypothesis C: Testing Structural Equivalence
m_closure <- ergm(net ~ edges + b4cycle,
                  control = control.ergm(main.method = "Stochastic"),
                  verbose = TRUE)
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
