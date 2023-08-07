# Compares the country's life expectancy to schooling in 2015

country_2015 <- data_life %>%
  filter(Year == 2015)

chart_1 <- ggplot(country_2015, aes(x = Schooling, y = Life.expectancy)) +
  geom_point() +
  labs(title = "Years of Schooling vs. Life Expectancy in 2015",
       x = "Years of Schooling", y = "Life Expectancy") +
  theme_minimal()
