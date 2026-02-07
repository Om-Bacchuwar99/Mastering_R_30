# Additional part of Deployer package.

test %>% select(name,age) %>% tail


# mutate()
# This function will add new columns to the dataframe.
# create new column called age_expectancy = 76 - age.

names(test)
test %>% mutate(age_expectancy = 76 - age) %>% head # main function
test <- test %>% mutate(age_expectancy = 76 - age) %>% head # new column added excel assigned to test.xlsx
names(test)

select(test,age ,age_expectancy) # checking the difference






# group_by()
# This function is used to group data by one or more variable.

names(test)

grouped_test <- group_by(test,name)
View(grouped_test)
View(test)

test %>% group_by(name)
























