# WHO
# ui.R

library(shiny)

#### Previous version ####
 shinyUI(fluidPage(
   headerPanel("WHO Data Visualization"),
   mainPanel(
     tabsetPanel(
       tabPanel("Map", htmlOutput("gvis"),
                selectInput("var", label = "Choose a variable to display", choices = c(colnames(WHO)[4:358]), selected="Surface.area",width='100%')),
       tabPanel(" ")
     )
#   )
# )
# )

#choice <- gsub("."," ", colnames(WHO)[4:358], fixed=TRUE)

#shinyUI(fluidPage(
 # headerPanel("WHO Data Visualization"),
  #mainPanel(
   # tabsetPanel(
    #  tabPanel("Map", htmlOutput("gvis"),
     #          selectInput("var", label = "Choose a variable to display", choices = choice, selected="Surface.area",width='100%')),
      #tabPanel(plotOutput("plot"))
    )
  )
)
