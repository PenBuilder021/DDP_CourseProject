

library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  
  
  output$Plot1 <- renderPlot({

   plt1 <- ggplot(CO2, aes_string(x = input$radio, y = "uptake")) 
   plt1 + geom_boxplot()

  })
  output$Plot2 <- renderPlot({
    
    plt2 <- ggplot(subset(CO2, Type %in% input$select2), aes_string(x = "conc", y = "uptake")) 
    
    plt2 +geom_point(stat = "identity") +
      geom_smooth(method = "loess") + coord_cartesian(xlim = c(input$sliderMax[1], input$sliderMax[2]))
    
  })

})