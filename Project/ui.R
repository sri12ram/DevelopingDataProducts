library(shiny)
require(markdown)

shinyUI(
   navbarPage("BMI Prediction", 
                   # multi-page user-interface that includes a navigation bar.
        tabPanel("Let's find out your BMI",        
                sidebarPanel(
                        numericInput('height', 'Height (in metres)', 1, min = 0, max = 3, 
                                step = 0.02),
                        numericInput('weight', 'Weight (in kilograms)', 50, min = 0, max = 300, 
                                step = 1),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Results of Prediction'),
                        h4('Your BMi is:'),
                        verbatimTextOutput("prediction"),
                        br(),
                        h4('BMI Categories:'),
                        code('Underweight = <18.5',
                                br(),
                                'Normal weight = 18.5 to 24.9',
                                br(),
                                'Overweight = 25 to 29.9', 
                                br(),
                                'Obesity = BMI of 30 or greater')
                )
        ),
        tabPanel("About",
                 mainPanel(
                         includeMarkdown("about.md")
                 )
        )
   )
)