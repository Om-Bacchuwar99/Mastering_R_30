# PROJECT VALIDATION AND VERIFICATION

# seting the working directory to the Day 29th project

getwd()
setwd("D:\\CODE\\R\\Mastering_R_30\\Day 29")
getwd()


# verification of the day 29's saved file 
file.exists("population_plot.png")
file.exists("GDP_plot.png")
file.exists("life_exp_plot.png")
file.exists("unemployment_plot.png")

summarized_data <- read.csv("summary_IRELAND.csv")

# computing the derived insights from the summary

AVG_population <- summarized_data$avg_population_million
AVG_GDP <- summarized_data$avg_gdp_billion
AVG_life_exp <- summarized_data$avg_life_expectancy
AVG_unemploymt <- summarized_data$avg_unemployment


cat("Average Population (Millions) :",round(AVG_population,2))
cat("Average GDP (Billion $) :",round(AVG_GDP,2))
cat("Average Life Expectancy (Years) :",round(AVG_life_exp,2))
cat("Average Unemployment Rate (in %) :",round(AVG_unemploymt,2))

plot_files <- list.files(".",pattern = ".png",full.names = TRUE)
print(plot_files)

stopifnot(
  file.exists("population_plot.png"),
  file.exists("GDP_plot.png"),
  file.exists("life_exp_plot.png"),
  file.exists("unemployment_plot.png")
)
sessionInfo()
