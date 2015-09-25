library(shiny)

percentage <- function(comp,att) 100*(comp/att)
QBformula <- function(comp,att,yds,TD,int) (((((comp/att)-0.3)*5)+(((yds/att)-3)*0.25)+((TD/att)*20)+(2.375-(int/att)*25))/6)*100

shinyServer(
  function(input,output) {
    output$oname <- renderPrint({input$name})
    output$ocomp <- renderPrint({input$comp})
    output$oatt <- renderPrint({input$att})
    output$oyds <- renderPrint({input$yds})
    output$oTD <- renderPrint({input$TD})
    output$oint <- renderPrint({input$int})
    output$odate <- renderPrint({input$date})
    output$compperc <- renderPrint({percentage(input$comp,input$att)})
    output$rating <- renderPrint({QBformula(input$comp,input$att,input$yds,input$TD,input$int)})
  }
)

#https://urldefense.proofpoint.com/v2/url?u=https-3A__en.wikipedia.org_wiki_Passer-5Frating&d=BQIGAg&c=IV_clAzoPDE253xZdHuilRgztyh_RiV3wUrLrDQYWSI&r=1LEOaNpo3f8JKdLLrV7NQg&m=yEkL9LGS7x7RX1ztgBqEQTnjV3E-1d9tFAnNe9mDWrk&s=f0-o5CgMNgWrpBivjrtuv2KbiuT0qluBOUFGMXrGqjQ&e= 
