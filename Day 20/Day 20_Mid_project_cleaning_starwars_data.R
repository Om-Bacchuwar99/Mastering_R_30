# MID-COURSE PROJECT :1

# Loading dplyr,magrittr and xlsx package into current session.
library(dplyr)
library(magrittr)
library(xlsx)


# taking the built-in data named starwars
sw_data <- starwars
names(sw_data)
sw_data <- starwars %>% select(name,height,mass,hair_color,skin_color,eye_color,birth_year,sex,gender,homeworld,species)
write.csv(sw_data, "D:\\CODE\\R\\Mastering_R_30\\Day 20\\starwars_data.csv", row.names = FALSE)

# is.na(variable) : It detects the missing data within the variable/column.
cleaned_height_only <- sw_data %>% select(height) %>% filter(is.na(height))
View(cleaned_height_only)
# now it will only return na height.

# !is.na(variable) : It flips the and gives only non-missing data.
filled_height_only <- sw_data %>% select(height) %>% filter(!is.na(height))
View(filled_height_only)
# now it will only return the non-na height


# ifelse() : It is a decision maker
# syntax: ifelse(Question, Result if TRUE, Result if FALSE)
# for example: ifelse(Is it cold?, Wear Sweater/Jacket, Wear Sunglasses )
missing_filled_year_by_zero <- sw_data %>% select(birth_year) %>% mutate(birth_year = ifelse(is.na(birth_year),0,birth_year))
View(missing_filled_year_by_zero)

# paste() : It just concatenate with a space.
paste("Hi","User")
# paste0() : It concatenate without space.
paste0("Hi","User")

# cleaning data using the functions above
cleaned_sw_data <- sw_data %>% filter(!is.na(height),!is.na(mass)) %>% mutate(species = ifelse(is.na(species), "Unknown",species)) %>% mutate(species = as.factor(species)) %>% mutate(unique_id = paste0("CHAR_",row_number())) %>% select(unique_id, name, height, mass, species, homeworld, birth_year, gender)
View(select(cleaned_sw_data,unique_id,name,height,mass,species,homeworld))
View(cleaned_sw_data)
# 1] Filter data where it only keep the rows where the height is NOT missing AND the mass is NOT missing.
# 2] Modifies the species where the empty rows in the column named species is filled by character "Unknown".
# 3] Turn the species into category.
# 4] Creates new column by merging the CHAR_1 with the row_number. like CHAR_1,CHAR_2,CHAR_3,......so on.

# Writing data to the path
write.csv(cleaned_sw_data, "D:\\CODE\\R\\Mastering_R_30\\Day 20\\cleaned_starwars_data.csv", row.names = FALSE)
