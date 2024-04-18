# Import functions.R
source("functions.R")

# Import libraries
library(ggplot2)
library(sf)
library(spdep)

# Load Data
Admin1Graph <- read.table("Admin1Graph.txt")
Admin2Graph <- read.table("Admin2Graph.txt")
Admin1Geography <- load("Admin1Geography.RData")
Admin2Geography <- load("Admin2Geography.RData")
DirectEstimates <- read.table("DirectEstimates.txt")


# PROBLEM 1
# a)

# Compute the proportion of non-zero elements and display the sparsity pattern

# Convert N to a matrix if it's not already
if (!is.matrix(N)) {
  N <- as.matrix(N)
}

# Create R from N
R <- -N  # Set off-diagonal to -1 where N_ij is 1
diag(R) <- rowSums(N)  # Set diagonal entries to the number of neighbors

# Define the precision parameter, t (example: t = 1)
t <- 1

# Compute Q
Q <- t * R














