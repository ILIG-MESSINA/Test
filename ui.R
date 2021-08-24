#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    navbarPage("Iris dataset",
               id = "navBar",
               tabPanel("Inputs",
                        sliderInput("slider", "Slider",
                                    min = 1, max = 100, value = 50),
                        textInput("text", "Text")),
               tabPanel("Table", tableOutput("table"))
    ) 
))
