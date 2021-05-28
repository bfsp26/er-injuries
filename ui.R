#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

prod_codes <- setNames(products$prod_code, products$title)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  fluidRow(column(
    width = 8,
    selectInput(
      inputId = "code",
      label = "Product",
      choices = setNames(products$prod_code, products$title),
      width = "100%"
    )
  ), column(
    width = 2, selectInput(
      inputId = "y",
      label = "Y axis",
      choices = c("rate", "count")
    )
  )),
  fluidRow(
    column(width = 4, tableOutput(outputId = "diag")),
    column(width = 4, tableOutput(outputId = "body_part")),
    column(width = 4, tableOutput(outputId = "location"))
  ),
  fluidRow(column(width = 12,
                  plotOutput(outputId = "age_sex")))
))
