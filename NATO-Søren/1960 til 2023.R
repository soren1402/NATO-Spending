# I open the relevant packages from the library 

library(tidyverse)
library(ggplot2)
library(readxl)
library(ggmap)
library(mapdata)

# I import my data from Excel as a csv-file 

setwd("C:/Cold War")
getwd()
data = read.csv("1960-1991.csv",sep = ";")

# I want to check if my data looks fine 

data 
summary(data)
str(data)

# Then I plot my data to create a graph 

plot(data)


# To make the new graph I import my CSV-file into R-studios  

data2 = read.csv("C:/Cold War/Nato spending 1960-2023.csv",sep = ";")

# Now I can plot my data set 

plot(data2)
         
# I import my new CSV-file that contains data of US/NATO military spending 
        
USA_data = read.csv("C:/Users/soren/OneDrive/Dokumenter/Cold War/USA and NATO.csv", sep = ";") 

# Now I can make a graph to visualize how US military spending compares to total NATO spending 

USA_data %>%
  ggplot(aes(x = Year)) +
  geom_line(aes(y = NATO.total, color = "NATO")) +
  geom_line(aes(y = USA, color = "USA")) +
  labs(x = "Year", y = "Billions of USD", color = "Variable") +
  scale_color_manual(values = c("NATO" = "blue", "USA" = "red")) +
  ggtitle("NATO spending/US spending on military")

  
 
  






