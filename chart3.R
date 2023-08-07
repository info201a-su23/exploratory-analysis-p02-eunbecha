# Filter for the top 5 countries with the highest life expectancy in 2015
top_countries <- country_2015 %>%
  filter(Country %in% c("Slovenia", "Denmark", "Chile", "Cyprus", "Japan"))

# Plot the scatter plot
chart_3 <- ggplot(top_countries, aes(x = GDP, y = `Life expectancy`)) +
  geom_point(aes(color = Country), size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "dashed") +
  labs(title = "GDP vs Life Expectancy in 2015 for Countries with Highest Life Expectancy",
       x = "GDP", y = "Life Expectancy") +
  theme_minimal() +
  theme(legend.position = "bottom")


