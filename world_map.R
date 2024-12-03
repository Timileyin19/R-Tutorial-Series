
# install.packages("ggplot2")


library(ggplot2)
library(maps)
library(scales)

data("world.cities")

top_cities <- world.cities[world.cities$pop > 1000000, ]

world_map <- map_data("world")

ggplot() + 
  geom_polygon(data = world_map, aes(x = long, y = lat, group = group), fill = "lightgrey", 
               color = "white") + 
  geom_point(data = top_cities, aes(x = long, y = lat, size = pop), color = "blue", alpha = 0.7) +
  scale_size_continuous(labels = comma) +
  labs(title = "Global Distribution of Major Cities", x = "Longitude", y = "Latitude", 
       size = "Population") +
  theme_minimal()
