
shinyUI(navbarPage("FlatQQconcept",
    tabPanel("User Data Upload",headerPanel("CSV Viewer"),
             sidebarPanel(
               fileInput('file1', 'Choose CSV File',
                         accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
               tags$hr(),
               checkboxInput('header', 'Header', TRUE),
               radioButtons('sep', 'Separator',
                            c(Comma=',',
                              Semicolon=';',
                              Tab='\t'),
                            'Comma'),
               radioButtons('quote', 'Quote',
                            c(None='',
                              'Double Quote'='"',
                              'Single Quote'="'"),
                            'Double Quote')
             ),
             mainPanel(
               tableOutput('contents')
             )
    ),
    tabPanel("Data Summary",plotOutput("plot")),
    tabPanel("Price Forecast"),
    tabPanel("Dynamic Price Analytics")
))