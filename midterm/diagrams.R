library(tidyverse)
library(ggraph)
library(tidygraph)
library(igraph)
library(ggimage)


g <- tibble(
    from = c(2, 3, 4, 5, 6),
    to   = c(1, 2, 3, 4, 5)
) %>% 
as_tbl_graph() %>% 
activate(nodes) %>%
mutate(x = c(2, 3, 4, 5, 6, 1),
       y = c(0, 0, 0, 0, 0, 0)) 


g %>% 
    ggraph(x = x, y = y) + 
    geom_edge_link(arrow = arrow(length = unit(5, "mm")), 
    end_cap = circle(4, "mm"), 
    start_cap = circle(4, "mm"),
    strength = 1, color = "darkgrey") + 
    geom_node_label(aes(label = name), size = 5) + 
    theme_void() 

ggsave("midterm/img/path.png", width = 6, height = 1)





g <- sample_gnp(8, .3, directed = T) %>% 
    as_tbl_graph() %>% 
    activate(nodes) %>% 
    mutate(image = "https://thumbs.dreamstime.com/b/cute-cat-white-background-lovely-pet-cute-cat-white-background-124435681.jpg")


g %>% ggraph() + 
    geom_image(aes(x = x, y = y, image = image), size = .12) + 
    geom_edge_link(arrow = arrow(length = unit(5, "mm")), 
    end_cap = circle(15, "mm"), 
    start_cap = circle(15, "mm"),
    strength = 1, color = "darkgrey") + 
    theme_void() 

ggsave("midterm/img/cat-rank.png", width = 7, height = 7)


