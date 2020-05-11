
library(data.table)
library(shinydashboard)
library(ggplot2)
library(tidyverse)
library(googleVis)
library(readr)
library(DT)


State_spending <- read.csv(".\\data\\State_spending.csv",stringsAsFactors = FALSE)
rownames(State_spending)<- NULL

#choice <- colnames(State_spending)[-1]
# 
Party_Spending <- read.csv(".\\data\\Party_Spending.csv", stringsAsFactors = FALSE)
# row.names(Party_Spending) <- NULL
# 
Gun_Deaths_per_capita <- read.csv(".\\data\\Gun_Deaths_per_capita.csv", stringsAsFactors = FALSE)
# rownames(Gun_Deaths_per_capita) <-NULL
# 
# #options <- colnames(Gun_Deaths_per_capita)[-1]
# 
# Master_NRA8 <- read.csv("./data/Master_NRA8.csv", stringsAsFactors = FALSE)
# row.names(Master_NRA8) <- NULL
# 
GunLaws<- read.csv(".\\data\\GunLaws.csv", stringsAsFactors = FALSE)
# row.names(GunLaws) <- NULL
# 
# 
# Firearm_info <- read.csv("./data/Firearm_info.csv", stringsAsFactors = FALSE)
# rownames(Firearm_info)<- NULL
# 
# 
Master_NRA9 <- read.csv(".\\data\\Master_NRA9.csv", stringsAsFactors = FALSE)
# rownames(Master_NRA9)<- NULL
# #choice5 <- colnames(Firearm_info)[-1]
# 
# #setwd("C:/Users/devin/Desktop/NRA Data")
# #getwd()
# 
# bins <- c(0, 10, 20, 50, 100, 200, 500, 1000, Inf)
# pal <- colorBin("YlOrRd", domain = State_spending$NRA.Grand.Total.Supporting, bins = bins)