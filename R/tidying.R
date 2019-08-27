# Tidying scripts
# Tidying Anscombes Quartet -----------------------------------------------

library(tidyverse)
df <- as_tibble(anscombe)

df <-
  df %>%
  gather(xs, x, starts_with("x")) %>% 
  gather(ys, y, starts_with("y")) %>%
  mutate(groupx = parse_number(xs),
         groupy = parse_number(ys)) %>% 
  filter(groupy == groupx) %>%
  select(x, y, group = groupx)

write_csv(df, "./data/02_anscombe_cleaned.csv")


