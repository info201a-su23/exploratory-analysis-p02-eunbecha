library(ggplot2)
library(dplyr)
library(stringr)

data_life <- read.csv("https://raw.githubusercontent.com/info201a-su23/exploratory-analysis-p02-eunbecha/main/Life%20Expectancy%20Data.csv?token=GHSAT0AAAAAACEYE7NU7DNYGQS6NMTEVUUGZGQJ2JA")

# Compares the top 5 and smallest 5 country's life expectancy

country_2015 <- data_life %>%
  filter(Year == 2015)

chart_1 <- ggplot(country_2015, aes(x = Schooling, y = Life.expectancy)) +
  geom_point() +
  labs(title = "Years of Schooling vs. Life Expectancy in 2015",
       x = "Years of Schooling", y = "Life Expectancy") +
  theme_minimal()
