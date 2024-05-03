# new try 2024, with plotly:
library(plotly)

fig <- plot_ly(
    type = "sankey",
    orientation = "h",
    node = list(
      label = c("Applications", "1st Interview", "Rejected", "Ghosted", "2nd Interview", "3rd Interview", "Offer"),
      color = c("blue", "blue", "red", "white", "blue", "blue", "green"),
      pad = 15,
      thickness = 20,
      line = list(
        color = "black",
        width = 0.5
      )
    ),

    link = list(
      source = c(0,   0,  0,  1,  1,  1,  4,  5,  1),
      target = c(1,   2,  3,  2,  3,  4,  5,  2,  6),
      value =  c(10,  50, 50, 5,  3,  1,  1,  1,  1)
    )

  )
fig <- fig %>% layout(
  
      title = "Job Search 2017-2020",
      font = list(
        size = 10
      margin = list(t = 40, l = 10, r = 10, b = 10)
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