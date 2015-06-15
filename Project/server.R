library(shiny) 
bmi <- function(height, weight) weight / (height * height)

shinyServer(
        function(input, output) {
                output$inputHeight <- renderPrint({input$height})
                output$inputWeight <- renderPrint({input$weight})
                output$prediction <- renderPrint( {bmi(input$height, input$weight)} )
        }
)