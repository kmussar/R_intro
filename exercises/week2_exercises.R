#### Intro to R: week 2 exercises ####

# Working with dataframes

# Objectives:
#   importing data into R
#   working with data frames
#   subsetting data frames
#   manipulating factors

# Solutions available here: https://github.com/fredhutchio/R_intro/blob/master/solutions/week2_solutions.R

#### In-class exercises ####

## Challenge: download, inspect, and import the following data files (smaller set of data from same clinical set)
# example1: https://raw.githubusercontent.com/fredhutchio/R_intro/master/extra/clinical.tsv
# example2: https://raw.githubusercontent.com/fredhutchio/R_intro/master/extra/clinical.txt

## Challenge: What is the class, how many rows/columns, how many types of cancer (disease)?
class(clinical)
str(clinical)
"""disease is a factor datatype/class"""

dim(clinical) 
nrow(clinical)
ncol(clinical)
"""clinical df has 6832 rows and  20 columns"""

unique(clinical$disease) 
"""15 unique levels/disease types"""



## Challenge: what is the difference in results between these two lines of code?
clinical[ , 1] # factor with 103 levels 
clinical[1] # returns a df, but 1 column of dataframe
clinical[1:3,2] # rows 1-3, column 2
clinical[,-1] # everything EXCEPT the first column 
clinical[-c(1:100), ] #excludes rows 1-100


## Challenge: code as many different ways possible to extract the column days_to_death
clinical["days_to_dealth"] 
clinical[[,"days_to_death"]
clinical[,"days_to_dealth"] 
names(clinical)
clinical[,6]
clinical$days_to_death
         
## Challenge: extract the first 6 rows for only age at diagnosis and days to death
clinical[1:6,c("age_at_diagnosis", "days_to_death")]
clinical[1:6, c(3,6)]
        
## Challenge: calculate the range and mean for cigarettes per day
summary(clinical$cigarettes_per_day)
mean(clinical$cigarettes_per_day, na.rm = TRUE)
range(clinical[["cigarettes_per_day"]], na.rm = TRUE)
         
## Challenge: replace "not reported" in ethnicity and race with NA
levels(clinical$ethnicity)
clinical$ethnicity[3] <- NA
         
# do a Google search to find additional strategies for renaming missing data

#### Extra exercises ####

## Using the same clinical object from week 2, write code to accomplish the following tasks:

# extract the last 100 rows for only disease and race and save to an object called disease_race

# calculate the minimum and maximum for days to death

# change all of the factors of race to shorter names for each category, and appropriately indicate missing data
