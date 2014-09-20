# This is the server logic for a Shiny web application.
# to compute a Fourier series based on input parameters

library(shiny)
library(ggplot2)

source("./functions.R")

x<-rep(0:100)
shinyServer(function(input, output) {
  
  # the fourier series data 
  fourierseries.df <- reactive({
    fourierSeries(x, input)
  }) 
  
  output$fourierSeriesPlot  <- renderPlot({
    data <- fourierseries.df()
    print(ggplot(data, aes(x = x, y=y)) + 
            geom_line(col = "red", size=1) +
            theme_bw() + 
            xlab("Time (s)") + ylab("Amplitude") + 
            ggtitle("Fourier Series") 
    )
  })
  
  # reactive output data table
  output$datatable <- renderDataTable({fourierseries.df()}, 
                                      options = list(iDisplayLength = 10))
  
  # download data
  output$downloadData <- downloadHandler(
    filename = 'fourierseries.csv',
    content = function(file) {
      write.csv(fourierseries.df(), file, row.names =FALSE)
    }
  )
  
})