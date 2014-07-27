library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predict Iris Species"),
  sidebarPanel(
    #numericInput('height', 'Sepal Length', 68, min = 60, max = 75, step = 1),
    sliderInput("sl",label=h4("Sepal Length"),min=4,max=8,step=0.1,value=5.0),
    sliderInput("sw",label=h4("Sepal Width"),min=2,max=4.6,step=0.1,value=2.1),
    sliderInput("pl",label=h4("Petal Length"),min=1,max=7,step=0.1,value=2.1),
    sliderInput("pw",label=h4("Petal Width"),min=0.1,max=3,step=0.1,value=2.1),
    submitButton('Submit')
    
  ),
  mainPanel(
    tabsetPanel(
      tabPanel('Predict Output',
               h6('Input Sepal measurement is '),
               verbatimTextOutput("s"),
               #h6('Input Sepal Width is '),
               #verbatimTextOutput("sw"),
               h6('Input Petal measurement is '),
               verbatimTextOutput("p"),
               h6('The prediction of specie is '),
               verbatimTextOutput("pred")
               ),
               
      tabPanel(
        'Tree Plot',
        plotOutput('tree')
        )
      )
    
  )
))