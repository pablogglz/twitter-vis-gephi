##############################################################################
###   Script R para capturar tuits, visualizarlos, y exportar para Gephi   ###
##############################################################################


# Cargar librerias necesarias

library(graphTweets)
library(rtweet)
library(openxlsx)
library(dplyr)
library(sigmajs)

# Buscar tuits, incluyendo retuits - sustituir "SUSTITUIR" por lo que se quiera buscar (un HT o texto, es indiferente)
# En n = xxxx; xxxx es la cantidad de tuits que se quieren coger
tweets <- search_tweets("#SUSTITUIR", n = 4000, include_rts = TRUE)

net <- tweets %>% 
  gt_edges(screen_name, retweet_screen_name) %>% 
  gt_edges_bind(screen_name, quoted_screen_name) %>% 
  gt_nodes() %>% 
  gt_collect()

c(edges, nodes) %<-% net

edges$id <- 1:nrow(edges)
edges$size <- edges$n

nodes$id <- nodes$nodes
nodes$label <- nodes$nodes
nodes$size <- nodes$n

# Parte para visualizar. Util sobre todo para comprobar que funciona todo.

sigmajs() %>% 
  sg_nodes(nodes, id, size, label) %>%
  sg_edges(edges, id, source, target) %>% 
  sg_layout() %>% 
  sg_cluster(colors = c("#0C46A0FF", "#41A5F4FF")) %>% 
  sg_settings(
    edgeColor = "default",
    defaultEdgeColor = "#d3d3d3"
  ) %>% 
  sg_neighbours()


## Exportar .XLSX para Gephi

write.xlsx(edges,"aristas.xlsx", asTable = FALSE)
write.xlsx(nodes,"nodos.xlsx", asTable = FALSE)
