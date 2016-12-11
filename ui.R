
library(shiny)

shinyUI(navbarPage("CO2 Plots",
    tabPanel("Plot - Page 1",
      titlePanel("Exploring CO2 uptake"),
        sidebarLayout(sidebarPanel(
        helpText("Use these buttons to control the plot."),
        radioButtons("radio", label = h3("Select a variable"),
                     choices = c("Type", "Treatment"), selected = "Type")
                              ),
                    
        mainPanel(h3("CO2 Uptake v. Location or Treatment Group"),plotOutput("Plot1"))
        )),
    
    tabPanel("Plot - Page 2",
        titlePanel("CO2 concentration and uptake"),
             sidebarPanel(
               helpText("Use these buttons to control the plot."),
               selectInput("select2", label = h3("Select Location"), choices = c("Quebec", "Mississippi"), selected = "Quebec"),
               sliderInput("sliderMax", "CO2 Concentration Max", min = 90, max = 1000, value = c(96, 900))
             ),
             mainPanel(h3("CO2 Concentration v. Uptake by Location"),
               
              plotOutput("Plot2")
               
               ))
)
) 
