library(shiny)
server=shinyServer(function(session,input,output)
{
  
  observeEvent(
    input$District,
    updateSelectInput(session,"Station","Station",
                      choices=data$Station[data$District==input$District])
  )
  output$GivenData<-renderTable({
    Stationfilter<-subset(Data,Data$Station==input$Station)
  })
  
})  

shinyApp(ui,server)
