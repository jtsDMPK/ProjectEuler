# J Tyler Smith
# June 25, 2024

# Project Euler Problems
# Problem 1:

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, and 9. 
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# This program creates a subroutine to sum the multiples of a value less than 1000
# and then calculates the sum asked for in the prompt by inclusion/exclusion

library(tictoc)
library(beepr)



multiple_sum <- function(factor_val,max_val){
  # First, determine how many factors of the specified value are in the sum
  n <- floor((max_val-1)/factor_val)
  # Then calculate the sum using the standard formula
  multiple_sum <- factor_val * n * (n+1) / 2
}

tic()

# The two factors for the task are 3 and 5; their lcm is 15
factor_val1 = 3
factor_val2 = 5
lcm_vals = 15

# The prompt wants factors less than 1000
max_val = 1000

# Sum the factors and subtract the sum of the lcm to avoid double counting
solution <- multiple_sum(factor_val1,max_val) + multiple_sum(factor_val2,max_val) - multiple_sum(lcm_vals,max_val)

toc()