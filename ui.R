library(shinydashboard)

Sys.sleep(20)

shinyUI(dashboardPage(skin = "black",
  dashboardHeader(title = "NRA Anti Lobbying Database"),
  dashboardSidebar(
    sidebarUserPanel("Devin Fagan", image = 'data:image/jpeg;base64,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'),
    sidebarMenu(
      menuItem("NRA Spending Map", tabName = "map_tab", icon = icon("map")),
      menuItem("NRA Party Spending", tabName = "spending_tab", icon = icon("database")),
      menuItem("Gun Facts Map", tabName = "gun_map_tab", icon = icon("map")),
      menuItem("Representatives", tabName = "Representatives_tab"),
      menuItem("Gun Laws Data", tabName = "data1", icon = icon("data"))
    )
    
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "map_tab",
              h2("NRA Spending Map"),
              br(),
              h4("This map contains the spending amount of the NRA. The map is seperated by 
                 two topics. NRA Spending Total-Supporting is the money spent on candidates the NRA
                 has lobbied, campaigned and fundraised for. NRA Spending Total-Opposing 
                 is the money spent on candidates the NRA opposes. Funds spent in opposition of 
                 candidates are recorded as negative."),
              br(),
              fluidRow(selectInput("spending_select",
                                      "Please Select Spending Total to Display",
                                      choices = c("NRA.Grand.Total.Supporting", "NRA.Grand.Total.Opposing"))),
              fluidRow(htmlOutput("Spending_map_Output"))
                       ),
      tabItem(tabName = "spending_tab",
              h2("Party Funding Data"),
              br(),
              h4("This graph displays how the NRA divides their spending by political party. Please select 
                 a state to display how the NRA spends per party in that state."),
              br(),
              fluidRow(selectizeInput(inputId = "State1",
                                      label = "Please Select State",
                                      choices = unique(Party_Spending$state))),
              fluidRow(plotOutput("spending_data")),
                       ),
      tabItem(tabName = "gun_map_tab", 
              h2("Gun Violence Data Map"),
              br(),
              h4("This map contains the death rates and total deaths caused by gun violence.
                 Casualties are shown per 100,000."),
              br(),
              fluidRow(selectizeInput("gun_fact",
                                      "Please Select Gun Fact to Display",
                                      choices = colnames(Gun_Deaths_per_capita)[-1])),
              fluidRow(htmlOutput("gun_fact_map")),
              h6("*statistics are shown per 100,000"),
              ),
      tabItem(tabName = "Representatives_tab",
              h2("Representatives Lobby Funding Data"),
              br(),
              h4("This graph displays NRA spending on individual candidates in each state. Negative numbers
                 represent funds spent opposing that candidate. Only candidates that won their respective 
                 races are included."),
              br(),
              fluidRow(selectizeInput(inputId = "State",
                                      label = "Please Select State",
                                      choices = unique(Master_NRA9$state))),
              fluidRow(plotOutput("Representatives")),
              ),
      tabItem(tabName = "data1",
              h2("Gun Laws Data Table"),
              br(),
              h4("This table displays which states have enacted which of five laws restricting gun use and 
                 ownership. Whether guns must be registered. Whether a permit is required to carry 
                 a firearm. Whether a permit is required to purchase a firearm. Whether the state allows 
                 firearms to be carried openly. Whether a background check is required before an individual 
                 will be permitted to purchase a firearm."),
              fluidRow(box(DT::dataTableOutput("table1"))))

      )
)
)
)

