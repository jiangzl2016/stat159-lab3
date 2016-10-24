library(shiny)

ui <- fluidPage(
  headerPanel('Simple Linear Regression on Advertising'),
  selectInput('xcol', 'X Variable',
                choices = names(Advertising),
                selected = names(Advertising)[2]
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {
  
  selectedData <- reactive({
    Advertising[,c(input$xcol, 'Sales')]
  })
  
  output$plot1 <- renderPlot({
    plot(selectedData()
         )
  })
}

shinyApp(ui = ui, server = server)