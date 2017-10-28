library(igraph)

edges = read.table('facebook_sample_anon.txt')
edges

g = graph_from_data_frame(edges, directed = FALSE, vertices = NULL)
g

# (a) What are its order and size?
gsize(g)
gorder(g)

# (b) Is it connected?
length(decompose(g))

# (c) Compute its density. Do you consider it sparse?
edge_density(g)
1/gorder(g)
# It's very very sparse


# (d) Plot its degrees distribution in linear and in log-log scale. Which is more helpful to understand this distribution? Does this distribution seem to follow a power-law?
dg_dist = degree.distribution(g)
plot(dg_dist)
plot(dg_dist, log='xy')

# (e) What are the range, the mode, the mean, the median and the standard deviation of its degree distribution? What do they tell you?
range(dg_dist)
names(sort(table(degree(g)), decreasing = TRUE))[1]
mean(dg_dist)
median(dg_dist)
sd(dg_dist)


# (f) Compute its diameter, its average distance, and its 90% effective diameter (the smallest distance d such that at least a 90% of the pairs of different nodes are at distance at most d).
diameter(g, directed = FALSE)
plot(distance_table(g, directed=FALSE)$res)
