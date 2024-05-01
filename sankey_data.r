# Library
# library(networkD3)
# library(dplyr)
# 
# A connection data frame is a list of flows with intensity for each flow
# links <- data.frame(
#   source=c("group_A","group_A", "group_B", "group_C", "group_C", "group_E"),
#   target=c("group_C","group_D", "group_E", "group_F", "group_G", "group_H"),
#   value=c(2,3, 2, 3, 1, 3)
#   )
# 
# From these flows we need to create a node data frame: it lists every entities involved in the flow
# nodes <- data.frame(
#   name=c(as.character(links$source),
#   as.character(links$target)) %>% unique()
# )
# 
# With networkD3, connection must be provided using id, not using real name like in the links dataframe.. So we need to reformat it.
# links$IDsource <- match(links$source, nodes$name)-1
# links$IDtarget <- match(links$target, nodes$name)-1
# 
# Make the Network
#  p <- sankeyNetwork(Links = links, Nodes = nodes,
#               Source = "IDsource", Target = "IDtarget",
#               Value = "value", NodeID = "name",
#               sinksRight=FALSE)
# p
# 
# save the widget
# library(htmlwidgets)
# saveWidget(p, file=paste0( getwd(), "/HtmlWidget/sankeyBasic1.html"))

# new 2024:
library(plotly)

fig <- plot_ly(

    type = "sankey",
    orientation = "h",
    node = list(

      label = c("Applications", "A2", "B1", "B2", "C1", "C2"),

      color = c("blue", "blue", "blue", "blue", "blue", "blue"),

      pad = 15,

      thickness = 20,

      line = list(

        color = "black",

        width = 0.5

      )

    ),


    link = list(

      source = c(0,1,0,2,3,3),

      target = c(2,3,3,4,4,5),

      value =  c(8,4,2,8,4,2)

    )

  )

fig <- fig %>% layout(

    title = "Basic Sankey Diagram",

    font = list(

      size = 10

    )

)


fig

# data:
# total 111
# initial ghosted 50
# initial rejected 50
# 1st interview 10
#   -> ghosted 3
#   -> rejected 5
#   -> 2nd interview 1
#   -> offer 1
# 2nd interview 1
#   -> 3rd interview 1
# 3rd interview 1
#   -> rejected 1