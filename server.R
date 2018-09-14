library(shiny)
winning <- function(wins, losses, ties) {(wins+ties/2)/(wins+losses+ties)}
shinyServer(
  function(input, output){
    output$winningpercentage <- renderPrint({winning(input$wins,input$losses,input$ties)})
  }
)