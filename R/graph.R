library(tidyverse)
library(ggplot2)
library(gapminder)

gapminder %>%
  filter(country %in% c("Brazil", "Cuba", "United States")) %>%
  filter(year > 1990) %>%
  ggplot(aes(x = year, y = lifeExp, color = country)) +
  geom_line() +
  geom_point()
