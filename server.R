# WHO
# server.R
WHO <- read.csv("D:/uni/Universite_KUleuven/SQL/map/data/WHO.csv")
library(shiny)
library(googleVis)
#library(corrplot)
#library(ggplot2)
#library(reshape2)
library(scales)
#library(gplots)


## Color brewer
colorbrewer <- "{minValue:0,colors:['#F7FCF0', '#E0F3DB', '#CCEBC5', '#A8DDB5', '#7BCCC4', '#4EB3D3', '#2B8CBE', '#0868AC', '#084081']}"

## shinyServer ###################################################

shinyServer(function(input, output) {
  
  # Map
  output$gvis <- renderGvis({
    # defaultColor = color for unspecified/null value
    gvisGeoChart(WHO,
                 locationvar="Country", colorvar=gsub(" ",".", input$var, fixed=TRUE),
                 options=list(colorAxis=colorbrewer,defaultColor='#F5F5F5'))     
  })
  
  
  

})

