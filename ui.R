getwd()
setwd("C:/Users/sadish/OneDrive/Desktop/work")
Data<-read.csv("dummy.csv")

library(shiny)

ui=(fluidPage( 
  titlePanel("Analysis"),
  sidebarLayout(
    sidebarPanel(
      selectInput("District","District",choices=Data$District),
      selectInput("Station","Station",choices="",selected=""),
    ),
    
    mainPanel(
      tableOutput("GivenData")
    ))
  
))

