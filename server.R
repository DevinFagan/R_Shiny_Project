Sys.sleep(20)

shinyServer(function(input, output){

    output$Spending_map_Output <- renderGvis({ State_spending %>% select(state, amount = input$spending_select) %>%
      gvisGeoChart(., locationvar = "state", colorvar = "amount",
                   options=list(region="US", displayMode="regions", 
                                resolution="provinces",
                                width="auto", height="auto"))
      
  })

  output$spending_data <- renderPlot({
    Party_Spending %>%
      group_by(state)%>%
      filter(state == input$State1)%>%
      ggplot(aes(x = state, y = NRA.total)) +
      geom_bar(stat = 'identity', aes(fill = Party), position = "dodge2")

  })

  output$gun_fact_map <- renderGvis({
    gvisGeoChart(Gun_Deaths_per_capita, "state", input$gun_fact,
                 options=list(region="US", displayMode="regions",
                              resolution="provinces",
                              width="auto", height="auto", colorAxis="{colors:['white', 'red']}"))
  })

output$Representatives <- renderPlot({
  Master_NRA9 %>%
    group_by(Name) %>%
    filter(state == input$State) %>%
    ggplot(aes(x =Name, y= NRA.Grand.Total)) +
    geom_bar(stat = 'identity', aes(fill = Party)) + coord_flip()
})

# output$map3 <- renderGvis({
#   gvisGeoChart(GunLaws, "State", hovervar =  GunLaws$permitReqToPurchase,
#                options=list(region="US", displayMode="regions",
#                             resolution="provinces",
#                             width="auto", height="auto"))
# })
#   
# 
output$table1 <- DT::renderDataTable({
   datatable(GunLaws, rownames=FALSE)%>%
     formatStyle(input$state,  
                 background="skyblue", fontWeight='bold')
 })  


})

