# Clean DOSPERT30 data
# 9.28.21 SP

# restructured data frames adapted from 
# <https://github.com/schafik/dospert>

# load required packages
library(tidyverse)
library(here)

# load source functions
source(here::here('src', 'dospert_functions.R'))

# set hard-coded variables

# load data
dospert_raw <- read_csv(here::here('data','DOSPERT_data.csv'))

# clean and reformat raw data frame
dospert_clean <- dclean(dospert_raw)

# calculate mean octant scores for each participant
dospert_sum <- dsum(dospert_clean)
