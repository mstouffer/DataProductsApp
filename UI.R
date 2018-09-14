library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Estimate Your Winning Percentage"),
    sidebarPanel(
      numericInput('wins', 'Wins', 0, min = 0, max = 162, step = 1
      ),
      numericInput('losses', 'Losses', 0, min = 0, max = 162, step = 1
      ),
      numericInput('ties', 'Ties', 0, min = 0, max = 162, step = 1
      ),
      submitButton('Calculate The Winning Percentage!')
    ),
    mainPanel(
      h3('Your Winning Percentage:'),
      verbatimTextOutput("winningpercentage")
    )
  )
)