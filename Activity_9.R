library(ggplot2)
library(palmerpenguins)
library(tidyr)
library(dplyr)
library(dcData)
BabyNamesMark <- BabyNames %>%
  filter(name == "Mark")
BabyNamesMathew <- BabyNames %>%
  filter(name == "Mathew")
BabyNamesLuke <- BabyNames %>%
  filter(name == "Luke")
BabyNamesJohn <- BabyNames %>%
  filter(name == "John")

BabyNamesCombined <- bind_rows(BabyNamesMark,BabyNamesMathew, BabyNamesLuke, BabyNamesJohn)

ggplot(
  data = BabyNamesCombined,
  mapping = aes(
    x = year,
    y = count,
    color = name
  )
) +
  geom_point(size=2) +
  geom_step()+
  labs(
    x = "Year",
    y = "Petal length (cm)",
    color = "Names",
    shape = "Names",
    title = "Total Number of People With Names of the Four Evangelists"
  )






BabyNamesFinal <-   aggregate(
  x = BabyNamesCombined[,2:3],
  by = list(BabyNames$name, BabyNames$year),
  FUN = mean
)
View(BabyNamesFinal)