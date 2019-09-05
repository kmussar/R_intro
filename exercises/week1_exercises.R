#### Intro to R: week 1 exercises ####

# Introduction to R and RStudio

# Objectives:
#   RStudio and R syntax
#   using functions
#   assigning objects
#   working with vectors
#   dealing with missing data

# Solutions available here: https://github.com/fredhutchio/R_intro/blob/master/solutions/week1_solutions.R

#### In-class exercises ####

## Challenge: what does the function ceiling do? What are its main arguments? How did you determine this?
""" Takes a given number and returns the closest integer, rounding up. It only has one argument, the given number. 
You can find this out by typing ?ceiling into the Rstudio console and reading the documentation in the help window."""

## Challenge: what is the value of each item at each step?
mass <- 47.5            # mass?
"""47.5"""
width  <- 122             # width?
""" 122"""
mass <- mass * 2.0      # mass?
"""95"""
width  <- width - 20        # width?
"""102"""
mass_index <- mass/width  # mass_index?
"""0.931..."""

## Challenge:
organs <- c("lung", "prostate", "breast")
# How many things are in organs?
"""length(organs) --- 3"""
# what type of data is organs?
""" class(organs) --- 'character' """
# get overview of organs
"""str(organs) --- chr [1:3] 'lung', 'prostate', '...' """


## Challenge: what happens when each of the objects are created?
num_char <- c(1, 2, 3, "a")
  """ they're all strings/character"""
num_logical <- c(1, 2, 3, TRUE)
""" all numbers - true becomes a 1 """
char_logical <- c("a", "b", "c", TRUE)
""" all strings/character""" 
tricky <- c(1, 2, 3, "4")
""" all strings/character"""

## Challenge: why does the following code return TRUE: 
"four" > "five"
"""alphabetically"""

## Challenge:
# create vector
heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
# remove NAs from heights
"""heights[!is.na(heights)]"""
# calculate median of heights
"""median(heights) --- 64"""

# identify how many elements from more_heights are greater than 67 inches
"""more_heights <- heights[heights > 67]
   length(more_heights)
   6 """
# visualize data as a histogram (hint: function hist)
"""hist(heights)"""


#### Extra exercises ####

## Object manipulation
# create an object called agge that contains your age in years
# reassign the object to a new object called age (e.g., correct the typo)
# remove the previous object from your environment
# calculate your age in days

## Vector manipulation (character data):
# create a object representing a vector that contains the names of buildings on Fred Hutch's campus: https://www.fredhutch.org/en/contact-us/visit-us.html
# add Seattle, Washington to the beginning of the vector, and Steam Plant to the end of the vector
# subset the vector to show only the building in which you work

## Vector manipulation (numerical data):
# the following vector represents the number of vacation days possessed by various employees
vacation_days <- c(5, 7, 20, 1, 0, 0, 12, 4, 2, 2, 2, 4, 5, 6, 7, 10, 4)
# how many employees are represented in the vector?
# how many employees have at least one work week's worth of vacation available to them?
