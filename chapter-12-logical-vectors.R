library(tidyverse)
library(nycflights13)

flights |> 
  mutate(
    daytime = dep_time > 600, dep_time < 2000,
    approx_ontime = abs(arr_delay) < 20, 
    .keep = "used"
  )

flights |> 
  filter(is.na(dep_time))

flights |> 
  filter(month == 1, day == 1) |> 
  arrange(desc(is.na(dep_time)))

?near

