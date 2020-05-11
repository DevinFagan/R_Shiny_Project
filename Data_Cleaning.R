#Read in the Dataset
Master_NRA1 <- read_csv("~/Master_NRA1.csv")

#Read in the dataset containing states
state_abbrevs <- read_csv("C:/Users/devin/Downloads/state-abbrevs.csv")

#Rename the columns
state_abbrevs<-rename(state_abbrevs, state_abbrev = abbreviation)

#Merge the states on abbreviation
Master_NRA1<-inner_join(Master_NRA1, state_abbrevs, by= "state_abbrev")

#Merge the two Master_NRA dataframes
write.csv(Master_NRA1, "Master_NRA2.csv", row.names = F)

#Read the new Dataframe
Master_NRA2 <- read_csv("C:/Users/devin/Desktop/NRA Data/Master_NRA2.csv")

#Create a variable containing the total of the negative spending totals
State_spending <- Master_NRA2%>%
  filter(NRA.Grand.Total >= 0)%>%
  group_by(state)%>%
  summarise(NRA.Grand.Total.Opposing = sum(NRA.Grand.Total))

#Create a variable containing the total of the positive spending totals
State_spending <- Master_NRA2%>%
  filter(NRA.Grand.Total >= 0)%>%
  group_by(state)%>%
  summarise(NRA.Grand.Total.Opposing = sum(NRA.Grand.Total))


# Merge to create the State Amount Total
State_spending <- full_join(State_spending, State_spending1, by = "state")
State_spending[is.na(State_spending)] <- 0

#Write the State Amount Total csv
write.csv(State_spending, "State_spending.csv", row.names = F)

#Join the Master_NRA2 & State spending  dataset
Master_NRA3<-inner_join(Master_NRA2, State_spending, by = "state")

#Read in the Guns_Death_Per_Capita dataset
Gun_Deaths_per_capita <- read_csv("C:/Users/devin/Desktop/NRA Data/Gun_Deaths_per_capita.csv")

#Combine all of the datasets
Master_NRA3<-inner_join(Master_NRA3, Gun_Deaths_per_capita, by = "state")
write.csv(Master_NRA3, "Master_NRA3.csv", row.names = F)

#Call in the Dataframe
Master_NRA3 <- read_csv("C:/Users/devin/Desktop/NRA Data/Master_NRA3.csv")


#Select the columns that is needed
Master_NRA9<-Master_NRA3%>%
  group_by(state)%>%
  select(Name, NRA.Grand.Total, state, Party)


#Unlist Json file to create Gun Laws csv
test<-fromJSON(file = "data.json")

df<- lapply(test, function(data)
{data.frame(matrix(unlist(data), ncol = 6, byrow = T))})
  

df1<- do.call(rbind,df)

colnames(df1) <- names(test[[1]][[1]])
rownames(df1) <- NULL

write.csv(df1, "GunLaws.csv", row.names = F)





