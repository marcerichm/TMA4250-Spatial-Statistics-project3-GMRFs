
# Import libraries
library(ggplot2)
library(rgdal)
library(spdep)

# Load Data
Admin1Graph <- read.delim("/project_files/Admin1Graph.txt")
Admin2Graph <- read.delim("/project_files/Admin2Graph.txt")
load("/project_files/Admin1Geography.RData")
load("/project_files/Admin2Geography.RData")
DirectEstimates <- read.delim("/project_files/DirectEstimates.txt")



