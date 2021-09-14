# Clean DOSPERT30 data
# 9.14.21 SP

# restructured data frames adapted from 
# <https://github.com/schafik/dospert>

# load required packages
library(tidyverse)

# load source functions
source('/Users/ssp160230/github_directory/DOSPERT_RAnalysis/src/dospert_functions.R')

# set hard-coded variables
dospert_raw <- read_csv('/Users/ssp160230/github_directory/DOSPERT_RAnalysis/data/DOSPERT_data.csv')

# clean and reformat raw data frame
dospert_clean <- dclean(dospert_raw)

# calculate mean octant scores for each participant
dospert_sum <- dsum(dospert_clean)

#write csv for clean data frame and subscore data frame
write.csv(dospert_clean, "/Users/ssp160230/github_directory/DOSPERT_RAnalysis/output/DOSPERT_clean.csv", row.names = FALSE)
write.csv(dospert_sum, "/Users/ssp160230/github_directory/DOSPERT_RAnalysis/output/DOSPERT_sum.csv", row.names = FALSE)