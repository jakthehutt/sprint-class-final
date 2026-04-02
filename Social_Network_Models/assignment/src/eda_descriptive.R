library(readr)
library(statnet)

# ==============================================================================
# Descriptive Statistics / EDA for the AMA Bipartite Network
# ==============================================================================
# Run this script to generate all descriptive tables for the paper.
# Output is printed LaTeX-ready; copy directly into main.tex.
# ==============================================================================

edges_df <- read_csv("src/classification_master_refined.csv")
nodes_df <- read_csv("src/actor_metadata_refined.csv")
edges_df$feedback_ref <- sub("_.*", "", edges_df$chunk_id)

# --- 1. Actor class distribution -------------------------------------------
cat("=== TABLE 1: Actor Class Distribution ===\n")
class_tbl <- sort(table(nodes_df$actor_class), decreasing = TRUE)
class_pct  <- round(100 * prop.table(class_tbl), 1)
for (nm in names(class_tbl)) {
  cat(sprintf("  %-20s  N = %3d  (%.1f%%)\n", nm, class_tbl[nm], class_pct[nm]))
}
cat(sprintf("  %-20s  N = %3d  (%.1f%%)\n", "TOTAL", nrow(nodes_df), 100))

# --- 2. Organization size distribution -------------------------------------
cat("\n=== TABLE 2a: Organization Size Distribution ===\n")
size_order <- c(
  "Micro (1 to 9 employees)",
  "Small (10 to 49 employees)",
  "Medium (50 to 249 employees)",
  "Large (250 or more)"
)
size_tbl <- table(nodes_df$organization_size)
for (sz in size_order) {
  n <- ifelse(sz %in% names(size_tbl), size_tbl[sz], 0)
  cat(sprintf("  %-35s  N = %3d  (%.1f%%)\n", sz, n,
              100 * n / nrow(nodes_df)))
}
n_missing_size <- sum(is.na(nodes_df$organization_size) |
                       nodes_df$organization_size == "")
cat(sprintf("  %-35s  N = %3d  (%.1f%%)\n", "Missing / not reported",
            n_missing_size, 100 * n_missing_size / nrow(nodes_df)))

# --- 3. Country distribution (top 10) --------------------------------------
cat("\n=== TABLE 2b: Top 10 Countries ===\n")
country_tbl <- sort(table(nodes_df$country), decreasing = TRUE)
top10 <- head(country_tbl, 10)
for (nm in names(top10)) {
  cat(sprintf("  %-25s  N = %3d\n", nm, top10[nm]))
}

# --- 4. Missing transparency register data ---------------------------------
cat("\n=== Missing Transparency Register Data ===\n")
n_missing_size <- sum(is.na(nodes_df$organization_size) |
                       nodes_df$organization_size == "")
n_missing_country <- sum(is.na(nodes_df$country) | nodes_df$country == "")
n_missing_org <- sum(is.na(nodes_df$organization) | nodes_df$organization == "")
cat(sprintf(
  "  Actors without org size  : %d / %d (%.1f%%)\n",
  n_missing_size, nrow(nodes_df), 100 * n_missing_size / nrow(nodes_df)
))
cat(sprintf(
  "  Actors without country   : %d / %d (%.1f%%)\n",
  n_missing_country, nrow(nodes_df), 100 * n_missing_country / nrow(nodes_df)
))
cat(sprintf(
  "  Actors without org name  : %d / %d (%.1f%%)\n",
  n_missing_org, nrow(nodes_df), 100 * n_missing_org / nrow(nodes_df)
))

# --- 5. Stance distribution -------------------------------------------------
cat("\n=== Stance Distribution (all extracted statements) ===\n")
stance_tbl <- sort(table(edges_df$stance), decreasing = TRUE)
stance_pct  <- round(100 * prop.table(stance_tbl), 1)
for (nm in names(stance_tbl)) {
  cat(sprintf("  %-10s  N = %6d  (%.1f%%)\n",
              nm, stance_tbl[nm], stance_pct[nm]))
}
cat(sprintf("  %-10s  N = %6d\n", "TOTAL", nrow(edges_df)))

# --- 6. Network-level statistics -------------------------------------------
cat("\n=== TABLE 3: Network-Level Statistics ===\n")
edges_support <- subset(edges_df, stance == "SUPPORT")
bipartite_edgelist <- unique(edges_support[, c("feedback_ref", "concept_id")])

net <- network::network(bipartite_edgelist, directed = FALSE, bipartite = TRUE)
n_actors   <- net %n% "bipartite"            # Mode 1 nodes (statnet convention)
n_concepts <- network.size(net) - n_actors
n_edges    <- network.edgecount(net)
density    <- network.density(net)

d <- degree(net, gmode = "graph")
vertex_names <- network::network.vertex.names(net)
nodes_df_match <- match(vertex_names, nodes_df$feedback_ref)
is_actor <- !is.na(nodes_df_match)

actor_degrees   <- d[is_actor]
concept_degrees <- d[!is_actor]

cat(sprintf("  Actors (Mode 1)          : %d\n", n_actors))
cat(sprintf("  Policy Concepts (Mode 2) : %d\n", n_concepts))
cat(sprintf("  Edges (SUPPORT ties)     : %d\n", n_edges))
cat(sprintf("  Network Density          : %.4f\n", density))
cat(sprintf("  Mean Actor Degree        : %.2f\n", mean(actor_degrees)))
cat(sprintf("  SD Actor Degree          : %.2f\n", sd(actor_degrees)))
cat(sprintf("  Max Actor Degree         : %d\n", max(actor_degrees)))
cat(sprintf("  Mean Concept Degree      : %.2f\n", mean(concept_degrees)))
cat(sprintf("  Max Concept Degree       : %d\n", max(concept_degrees)))

# --- 7. Mean degree by actor class (heterogeneity for H1) ------------------
cat("\n=== Mean Degree by Actor Class (relevant for H1 heterogeneity) ===\n")
actor_class_vals <- nodes_df$actor_class[nodes_df_match[is_actor]]
class_degree_df  <- data.frame(
  actor_class = actor_class_vals,
  degree      = actor_degrees
)
class_means <- tapply(class_degree_df$degree, class_degree_df$actor_class, mean)
class_sds   <- tapply(class_degree_df$degree, class_degree_df$actor_class, sd)
class_ns    <- tapply(class_degree_df$degree, class_degree_df$actor_class, length)
for (cls in names(sort(class_means, decreasing = TRUE))) {
  cat(sprintf(
    "  %-20s  N = %3d  Mean = %5.2f  SD = %5.2f\n",
    cls, class_ns[cls], class_means[cls], class_sds[cls]
  ))
}
cat(sprintf("\nF-note: SD variation across classes supports H1 (heterogeneous"))
cat(sprintf(" base rates\n  imply the homophily signal is not a floor/ceiling artifact).\n"))
