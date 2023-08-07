# Summary information

# Find the top 5 countries with the highest life expectancy in 2015.
top_countries_2015 <- Life_Expectancy_Data_3 %>%
  filter(Year == 2015) %>%
  arrange(desc(`Life expectancy`)) %>%
  select(Country, `Life expectancy`, Population, Alcohol, Schooling) %>%
  head(5)

# Calculate the average values for population, alcohol, and schooling.
avg_population_top5 <- mean(top_countries_2015$Population, na.rm = TRUE)
avg_alcohol_top5 <- mean(top_countries_2015$Alcohol, na.rm = TRUE)
avg_schooling_top5 <- mean(top_countries_2015$Schooling, na.rm = TRUE)

# Combine the results into a list
summary_info_top5 <- list(
  top_countries_2015 = top_countries_2015$Country,
  avg_population_top5 = avg_population_top5,
  avg_alcohol_top5 = avg_alcohol_top5,
  avg_schooling_top5 = avg_schooling_top5
  )
summary_info_top5

# Find the top 5 countries with the lowest life expectancy in 2015
bottom_countries_2015 <- Life_Expectancy_Data_3 %>%
  filter(Year == 2015) %>%
  arrange(`Life expectancy`) %>%
  select(Country, `Life expectancy`, Population, Alcohol, Schooling) %>%
  head(5)

# Calculate the average values for population, alcohol, and schooling for these countries
avg_population_bottom5 <- mean(bottom_countries_2015$Population, na.rm = TRUE)
avg_alcohol_bottom5 <- mean(bottom_countries_2015$Alcohol, na.rm = TRUE)
avg_schooling_bottom5 <- mean(bottom_countries_2015$Schooling, na.rm = TRUE)

# Combine the results into a list
summary_info_bottom5 <- list(
  bottom_countries_2015 = bottom_countries_2015$Country,
  avg_population_bottom5 = avg_population_bottom5,
  avg_alcohol_bottom5 = avg_alcohol_bottom5,
  avg_schooling_bottom5 = avg_schooling_bottom5
)

summary_info_bottom5



