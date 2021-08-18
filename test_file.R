library(ggplot2)
library(car)

my_plot <-ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") + 
  theme_minimal()


plotly::ggplotly(my_plot)

st_joe_land <- read.csv(file = "stJoeLand.csv")

install.packages(c("readr", "data.table"))

library(data.table)
library(readr)

st_joe_land_readr <- readr::read_csv(file = "stJoeLand.csv")

st_joe_land_datatable <- data.table::fread(input = "stJoeLand.csv")

names(st_joe_land_datatable)[names(st_joe_land_datatable) == "Zip Code"] <- 
  "Zip_Code"

st_joe_land_datatable

save(st_joe_land, st_joe_land_datatable, file = "stJoeInfo.RData")

load("stJoeInfo.RData")

my_mean <- function(numbers) {
  numbers_length <- length(numbers)
  numbers_sum <- sum(numbers)
  numbers_average <- numbers_sum / numbers_length
  return(numbers_average)
}

my_mean(st_joe_land$sale_price)
