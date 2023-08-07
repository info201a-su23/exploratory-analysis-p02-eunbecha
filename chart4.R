library(ggplot2)
library(dplyr)

data_life <- read.csv("Life Expectancy Data.csv")
country_2015 <- data_life %>%
  filter(Year == 2015)

selected_countries <- country_2015 %>%
  filter(Country %in% c("Slovenia", "Denmark", "Chile", "Cyprus", "Japan", "Sierra Leone", "Angola", "Central African Republic", "Chad", "Côte d'Ivoire"))

chart_4 <- ggplot(selected_countries, aes(x = infant.deaths, y = Life.expectancy)) +
  geom_point(aes(color = Country), size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "dashed") +
  labs(title = "Infant deaths vs Life Expectancy in 2015 for Countries with Highest and lowest Life Expectancy",
       x = "Infant deaths", y = "Life Expectancy") +
  theme_minimal() +
  theme(legend.position = "bottom")
