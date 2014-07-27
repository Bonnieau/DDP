library(shiny)
library(rpart)
library("rpart.plot")
library("RColorBrewer") 
library(rattle)
shinyServer(
  function(input, output) {
    osl<-reactive({as.numeric(input$sl)})
    osw<-reactive({as.numeric(input$sw)})
    opl<-reactive({as.numeric(input$pl)})
    opw<-reactive({as.numeric(input$pw)})
    output$s<-renderPrint({paste("Length = ",input$sl,"   Width = ",input$sw)})
    output$p<-renderPrint({paste("Length = ",input$pl,"   Width = ",input$pw)})
    
    set.seed(168)
    fit<-reactive({rpart(Species ~ ., method="class", data = iris)})
    
    newdata<-reactive({data.frame(Sepal.Length=input$sl,Sepal.Width=input$sw,Petal.Length=input$pl,Petal.Width=input$pw)})
    #output$sp<-reactive({predict(fit,type="class",newdata)})
    sp<-reactive({as.character(predict({fit()},type="class",{newdata()}))})
    output$pred<-renderPrint({sp()})
    
    output$tree<-renderPlot({
      fancyRpartPlot({fit()})
    })

  }
)