# This is the user-interface definition of a Shiny web application
# to compute a Fourier series based on input parameters

library(shiny)
library(markdown)

shinyUI(fluidPage(

  # Application title
  tags$h2("Fourier Series Simulation"),
  # titlePanel("Fourier Series Simulation"),

  fluidRow(
    column(width=12,
           p("This is a shiny application to simulate a simple ",
             a(href="http://en.wikipedia.org/wiki/Fourier_series", "Fourier series defined by"),
             p(withMathJax("$$f(x)= a_0 + a_1 cos(\\frac{2\\pi t}{p} + \\phi)$$")),
             "."
           )
    )
  ),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    
    sidebarPanel(
      helpText(HTML("<b>Input parameters</b>")),
      sliderInput("magnitude",
                  "Fourier series mean amplitude",
                  min = 0,
                  max = 50,
                  value = 10),
      sliderInput("period",
                  "Fourier series period:",
                  min = 10,
                  max = 200,
                  value = 20),
      sliderInput("amplitude",
                  "Fourier series variability amplitude:",
                  min = 0,
                  max = 10,
                  value = 5),
      sliderInput("phase",
                  "Fourier series phase:",
                  min = 0,
                  max = 2*pi,
                  value = 0),
      downloadButton('downloadData', 'Download')
      
    ),

    # Main panel with tabs
    mainPanel(
      tabsetPanel(
        
        ## Main tabs
        tabPanel("Fourier Series Plot", plotOutput("fourierSeriesPlot")),
        tabPanel("Data", dataTableOutput("datatable")),
        tabPanel("Readme", includeMarkdown("introduction.md"))
      ) 
    )
  )
))
