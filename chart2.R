#This chart compares the life expectancies of the countries with the highest and lowest life expectancies
top_bottom_countries <- data_life %>%
  filter(Country %in% c("Slovenia", "Denmark", "Chile", "Cyprus", "Japan", 
                        "Sierra Leone", "Angola", "Central African Republic", "Chad", "Côte d'Ivoire")) %>%
  filter(Year == 2015)

chart_2 <- ggplot(top_bottom_countries, aes(x = Country, y = Life.expectancy, fill = Country)) +
  geom_bar(stat="identity") +
  coord_flip() +
  labs(title = "Life Expectancy in Countries with Highest and Lowest Values in 2015",
       x = "Country", y = "Life Expectancy") +
  theme_minimal()
