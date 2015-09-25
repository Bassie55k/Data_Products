library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Quarterback Evaluation"),
  
    sidebarPanel(
    dateInput("date","Date:"),
    h3('Quarterback Stats'),
    textInput('name','Name',value="Matt Stafford"),
    numericInput('att','Number of passing attempts',32,min=0,max=100,step=1,width='200px'),
    numericInput('comp','Number of completed passes',22,min=0,max=100,step=1,width='200px'),
    numericInput('yds','Passing yards',346,min=0,max=1000,step=1,width='200px'),
    numericInput('TD','Number of Touch-downs',2,min=0,max=10,step=1,width='200px'),
    numericInput('int','Number of Interceptions',0,min=0,max=10,step=1,width='200px'),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Quarterback Performance'),
    h4('You entered for the name:'),
    verbatimTextOutput("oname"),
    h4('You entered for the number of completions:'),
    verbatimTextOutput("ocomp"),
    h4('You entered for the number of passing attempts:'),
    verbatimTextOutput("oatt"),
    h4('Which resulted in a completion percentage of '),
    verbatimTextOutput('compperc'),
    h4('You entered for the number of yards:'),
    verbatimTextOutput("oyds"),
    h4('You entered for the number of TDs:'),
    verbatimTextOutput("oTD"),
    h4('You entered for the number of interceptions:'),
    verbatimTextOutput("oint"),
    h4('Which resulted in a quarterback rating of '),
    verbatimTextOutput('rating'),
    p('Source: https://en.wikipedia.org/wiki/Passer_rating')
    )
))