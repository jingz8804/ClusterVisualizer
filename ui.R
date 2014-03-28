library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Conditional Panels"),
  sidebarPanel(
    conditionalPanel(condition="input.condPanels==1",
                     helpText("Content Panel1")),
    conditionalPanel(condition="input.condPanels==2",
                     helpText("Content Panel2"))
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Panel 1", value=1),
      tabPanel("Panel 2", value=2),
      id="condPanels")
    )
  )
)
