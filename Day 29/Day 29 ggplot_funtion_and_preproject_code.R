# ADDITIONAL GGPLOT PACKAGE FUNCTIONS IN R PROGRAMMING LANGUAGE AND FINAL PROJECT PREREQUISITES


library(WDI)
population_data<- WDI(country = c("IE"), indicator = "SP.POP.TOTL", start = 2014, end = 2025)
View(population_data)

library(ggplot2)
ggplot(population_data,aes(x = year , y = SP.POP.TOTL)) + 
  geom_col(fill = "lightgreen", color = "black")+
  labs(x = "Year", y = "Population", title = "Population of Ireland over 10 years")

# now in the above in y-axis we should specify the values cause it is over 5 Million.
ggplot(population_data,aes(x = year , y = SP.POP.TOTL)) + 
  geom_col(fill = "lightgreen", color = "black")+
  labs(x = "Year", y = "Population", title = "Population of Ireland over 10 years") +
  scale_y_continuous(labels = scales::comma)


# also for fixing the x-axis to have look at all the years individually 
# by using factor() which will take each year distinctively.
ggplot(population_data,aes(x = factor(year) , y = SP.POP.TOTL)) + 
  geom_col(fill = "lightgreen", color = "black")+
  labs(x = "Year", y = "Population", title = "Population of Ireland over 10 years") +
  scale_y_continuous(labels = scales::comma)

# adding number of the population on each bar of the respective year
# Here we will use geom_text() which adds the labels
# and within the geom_text we will use vjust parameter for fixing the label alignment for bar.
ggplot(population_data,aes(x = factor(year) , y = SP.POP.TOTL)) + 
  geom_col(fill = "lightgreen", color = "black")+
  geom_text(aes(label = SP.POP.TOTL, vjust = -0.4)) +
  labs(x = "Year", y = "Population", title = "Population of Ireland over 10 years") +
  scale_y_continuous(labels = scales::comma)


# we can to de-clutter the visual by flipping the axes.
# by coord_flip() we can simply flip the axes 
# if we have to adjust the individual label of each bar.

ggplot(population_data,aes(x = factor(year) , y = SP.POP.TOTL)) + 
  geom_col(fill = "lightgreen", color = "black")+
  geom_text(aes(label = SP.POP.TOTL, hjust = -0.08)) +
  labs(x = "Year", y = "Population", title = "Population of Ireland over 10 years (flipped_axes and adjusted_label)") +
  scale_y_continuous(labels = scales::comma) + 
  coord_flip()


# If we want a smooth graph for the growing population we can use line graph.
ggplot(population_data,aes(x = year , y = SP.POP.TOTL)) + 
  geom_line(color = "lightgreen",linewidth = 1) + 
  geom_point(color = "black")
  labs( title = "Population of Ireland over 10 years")
# here we again can't see the all years in x-axis so then we have to factorise the year.
ggplot(population_data,aes(x = factor(year) , y = SP.POP.TOTL)) + 
  geom_line(color = "lightgreen",linewidth = 1) + 
  geom_point(color = "black")
labs( title = "Population of Ireland over 10 years")
# so the line has been disappeared. For the reason being the factorised of year treats only single value.

# for fixing this we need to group year as 1 in the ggplot()
ggplot(population_data,aes(x = factor(year) , y = SP.POP.TOTL, group = 1)) + 
  geom_line(color = "lightgreen",linewidth = 1) + 
  geom_point(color = "black")
labs( title = "Population of Ireland over 10 years")

# again adding label for each point.

ggplot(population_data, aes(x = factor(year), y = SP.POP.TOTL, group =1)) +
  geom_line(color = "lightgrey", linewidth = 1) +
  geom_point(color = "blue") + 
  labs( title = "Population of Ireland over 10 years") +
  geom_text(aes(label = SP.POP.TOTL), vjust = -0.5)




# Now we will perform the data cleaning procedures
library(WDI)
library(ggplot2)
library(dplyr)

# let's update the variable names for various parameters
var_name <- c(
  population = "SP.POP.TOTL",
  GDP = "NY.GDP.MKTP.CD",
  life_exp = "SP.DYN.LE00.IN",              # life-expectency
  unemployment = "SL.UEM.TOTL.ZS"
  )
  
# Now fetching the data using WDI

ire_data <- WDI( country = "IE",             # ISO country code of Ireland
                 indicator = var_name,       #  Here indicator fetches the world bank indicator codes for various parameters that we require
                 start = 2014,
                 end = 2025
                 )

View(ire_data)


# taking only useful variables from the formed ire_data

cleaned_ire_data <- ire_data %>% 
  select(year, population, GDP, life_exp, unemployment) %>%
  arrange(year)

View(cleaned_ire_data) # we can see that the life expectency in year 2024 is NA

# for fixing the NA we will use is.na()
# is.na() gives the boolean value of whether the na value present in particular selected column by row.

is.na(cleaned_ire_data$life_exp) # in the end we can get the TRUE indicating the presence of NA value.

cleaned_ire_data <- cleaned_ire_data %>%
  mutate(across(-year,~ ifelse(is.na(.), mean(.,na.rm = TRUE), .)))
 
# here . represents the current value in row of the fetched column.
# here we have fetched data accross the whole table and except year column
# and we will check for each columns the values of na if it is found then it will be replaced by the average of the all values of the current column.
# otherwise we will let it be the current value in the column(that is indicated by ".").

View(cleaned_ire_data)


# now we have to fix the large value of GDP and population which should be interpretable 

cleaned_ire_data <- cleaned_ire_data %>%
  mutate( GDP_in_B = GDP / 1e9,                # Billion = 1,00,00,00,000 (that is 1e9).
          population_in_M = population / 1e6   # Million = 10,00,000 (that is 1e6).
          )

View(cleaned_ire_data)

# We will use function(){}
# here we will use fuction(){}
# where, 
# rounded parenthesis() we will have the variables and indicators necessary for ggplot
# curvy braces {} we will insert whole ggplot function and the properties of geom_

plot <- function(cleaned_ire_data, x, y, title,y_label){
  ggplot(cleaned_ire_data,aes(factor({{x}}),{{y}},group = 1)) +
    geom_line(color = "steelblue", linewidth = 1.2) +   
    geom_point(size = 3, color = "darkred") +          
    geom_text(aes(label = round({{y}}, 2)),         
              vjust = -0.6, size = 3) +
    labs(title = title, x = "Year", y = y_label) +      
    theme_minimal() 
}


names(cleaned_ire_data)

# using this important function we can plot multiple plots
population_plot <- plot(
  cleaned_ire_data, year, population_in_M,
  "Ireland Population Growth (2014–2025)",
  "Population (Millions)"
)
population_plot


GDP_plot <- plot(
  cleaned_ire_data, year, GDP_in_B,
  "Ireland GDP Trend (2014–2025)",
  "GDP (Billion USD)"
)
GDP_plot

life_exp_plot <- plot(
  cleaned_ire_data, year, life_exp,
  "Life Expectancy Trend",
  "Years"
)
life_exp_plot

unemployment_plot <- plot(
  cleaned_ire_data, year, unemployment,
  "Unemployment Rate Trend",
  "Percentage"
)
unemployment_plot

getwd()
setwd("D:\\CODE\\R\\Mastering_R_30\\Day 29")
getwd()

# Using ggsave() we can save the plots in the above path

ggsave("population_plot.png",population_plot, width = 7, height = 5)
ggsave("GDP_plot.png",GDP_plot, width = 7, height = 5)
ggsave("life_exp_plot.png",life_exp_plot, width = 7, height = 5)
ggsave("unemployment_plot.png",unemployment_plot, width = 7, height = 5)


# Finally creating Summary of the analysis

analysis_sum <- cleaned_ire_data %>%
  summarise(
    avg_population_million = mean(population_in_M),
    avg_gdp_billion = mean(GDP_in_B),
    avg_life_expectancy = mean(life_exp),
    avg_unemployment = mean(unemployment)
  )

analysis_sum

# Exporting it to the same path

write.csv(analysis_sum, "summary_IRELAND.csv", row.names = FALSE)