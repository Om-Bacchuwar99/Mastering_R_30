# MID-COURSE PROJECT : 2

# Loading dplyr,magrittr and xlsx package into current session.
library(dplyr)
library(magrittr)
library(xlsx)

# Loading the yesterday's cleaned dataset in variable named dataframe_sw
dataframe_sw <- read.csv("D:\\CODE\\R\\Mastering_R_30\\Day 20\\cleaned_starwars_data.csv")

# case_when():
# just like the case in usual coding languages or we can say it is like super if-else.
# which has multiple cases for the different situation or conditions to be satisfiew accordingly
age_definer <- sw_data %>% mutate(Age_descriptor = case_when(birth_year > 100 ~ "Older",birth_year > 50 ~ "Old",birth_year > 18 ~ "Adult", TRUE ~ "Kid"))
View(age_definer)

# making an summary for the analysis of height, bmi, frequency and char_count of the cleaned_starwars_data.
analysis_summary <- dataframe_sw %>% 
  mutate(bmi = mass / ((height/100)^2)) %>% 
  mutate(height_classifier = case_when(height > 190 ~ "Tall",height > 170 ~ "Average",TRUE ~ "Dwarf")) %>% 
  group_by(height_classifier) %>%
  summarise(char_count = n(), avg_bmi = mean(bmi,na.rm = TRUE), frequent_homeworld = first(homeworld)) %>%
  arrange(desc(avg_bmi))

View(analysis_summary)

# Saving this analysis
write.csv(analysis_summary,"D:\\CODE\\R\\Mastering_R_30\\Day 21\\analysis_of_cleaned_starwars_data.csv" )