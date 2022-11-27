library(tidyverse)
ggplot(mpg) + 
  geom_point(aes(displ, hwy, color = class))
?mpg
this_is_a_really_long_name <- 2.5
flights <- nycflights13::flights
flights |> 
  filter(month %in% c(1,2))
flights |> 
  mutate(,
         gain = dep_delay - arr_delay,
         hours = air_time / 60,
         gain_per_hour = gain / hours,
         .keep = "used"
  )

flights |> 
  select(where(is.character))

flights |> 
  relocate(dep_delay:month, .after = tailnum)

vignette("pivot", package = "tidyr")

billboard_tidy <- billboard |> 
  pivot_longer(cols = starts_with("wk"),
               names_to = "week",
               values_to = "rank",
               values_drop_na = TRUE) |> 
  mutate(week = parse_number(week))

ggplot(billboard_tidy) + 
  geom_line(aes(x = week, y = rank, group = track), 
            alpha = 1/4) +
  scale_y_reverse()

glimpse(who)

library(gt)

islands_gt <- tibble(
  names = names(islands),
  size = islands) |> 
  arrange(
    desc(size)
) |> 
  slice(1:10)

gt_table <- islands_gt |> 
  gt()

gt_table <-  
  gt_table |> 
  tab_header(title = "Boog",
             subtitle = "Jook")
gt_table

gt_table |> 
  tab_source_note(
    source_note = md("Mega hits *vs* Hetro")
  )

gt_table |> 
  tab_footnote(
    footnote = "Iran",
    locations = cells_body(columns = names, 
                           rows = 1)
  )

gt_table |> 
  filter(m = max(size))

pkg_list <- c(
  "gtExtras", "reactable", 
  "ggiraph", "quarto", "rmarkdown", 
  "gtsummary", "palmerpenguins", "fs"
)
install.packages(pkg_list)
