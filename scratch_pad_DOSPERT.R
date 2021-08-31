
# load libraries and data
library(tidyverse)
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
dospert_data_new <- read_csv('/Users/ssp160230/Box/Aging Well Lab/Measures/DOSPERT30/Test Analysis/DOSPERT_data_new.csv')

# clean up data

# remove unnecessary column for "complete" form status
dospert_data_new <- select(dospert_data_new, -dospert_complete)

#transpose df, record_ids become columns, variables become rows
dospert_data_new_t <- data.frame(t(dospert_data_new[-1]))
colnames(dospert_data_new_t) <- c("test_1", "test_2", "test_3")

#make variables their own separate column, remove variable names from rownames
dospert_data_new_t <- cbind(Variables = rownames(dospert_data_new_t), dospert_data_new_t)
rownames(dospert_data_new_t) <- NULL

#make variables vector, convert to df
Variables <- colnames(dospert_data_new[2:31])
Variables_df <- data.frame(Variables)
#variable names written as (domain)(risk type)_(question #)
#want to separate domain, risk type, and question number into separate columns
Variables_separated <- Variables_df %>%
  separate(Variables, c('domain', 'risk_type', 'Q_number'), '_')
#remove risk_type column
Variables_separated <- select(Variables_separated, -risk_type)
#create separate df from RT, RP, and RB scores
risk_values_test <- data.frame(record_id = rep(colnames(dospert_data_new_t[2:4]), each=30), 
                               RT = c(dospert_data_new_t[1:30, "test_1"], dospert_data_new_t[1:30, "test_2"], dospert_data_new_t[1:30, "test_3"]),
                               RP = c(dospert_data_new_t[31:60, "test_1"], dospert_data_new_t[31:60, "test_2"], dospert_data_new_t[31:60, "test_3"]),
                               RB = c(dospert_data_new_t[61:90, "test_1"], dospert_data_new_t[61:90, "test_2"], dospert_data_new_t[61:90, "test_3"]))

#bind risk_values and variables_separated dfs
dospert_bind <- cbind(Variables_separated, risk_values)

#move record_id column to column 1
dospert_bind <- relocate(dospert_bind, "record_id")


dospert_bind <- dospert_bind %>% 
  arrange(record_id, domain)

dospert_sum <- aggregate(x = dospert_bind$RT,
                         by = list(dospert_bind$record_id, dospert_bind$domain),
                         FUN = sum)
dospert_sum_2 <- aggregate(cbind(RT,RP,RB) ~ record_id + domain, data = dospert_bind, FUN = sum)
dopsert_sum_2 <- dospert_sum_2 %>%
  arrange(record_id)


#FORMULA BUILDING GOOD CODE
#create vectors for columns in new df
risk_ids <- vector("character", length((ncol(df_t_mod))*30)) #empty vector
risk_ids <- c(rep(colnames(df_t_mod), each=30)) #values assigned to risk_ids
risk_t <- vector("integer", length(risk_ids)) #empty vector
risk_p <- vector("integer", length(risk_ids)) #empty vector
risk_b <- vector("integer", length(risk_ids)) #empty vector
#use for loops to append values to each risk type vector
for (i in 1:ncol(rt_df)) {
  risk_t[1:length(risk_t)] <- rt_df[i]
}
for (i in 1:ncol(rp_df)) {
  risk_p[1:length(risk_t)] <- rp_df[i]
}
for (i in 1:ncol(rb_df)) {
  risk_b[1:length(risk_t)] <- rb_df[i]
}






#create vectors for columns in new df
risk_ids <- vector("character", length((ncol(df_t_mod))*30))
risk_ids <- c(rep(colnames(df_t_mod), each=30))
risk_t <- vector("double", length(risk_ids))
risk_p <- vector("double", length(risk_ids))
risk_b <- vector("double", length(risk_ids))
#assign values to vectors
for (i in 1:ncol(rt_df)) {
  risk_t <- rbind(rt_df[i])
}
for (i in 1:ncol(rp_df)) {
  risk_p <- rbind(rp_df[i])
}
for (i in 1:ncol(rb_df)) {
  risk_b <- rbind(rb_df[i])
}






#~~~~~~~~~ test code below this line ~~~~~~~~~~
#make a separate vectors, one with variables, one with one record ID repeating 30x
Variables <- dplyr::pull(dospert_data_new_t, Variables)
record_id <- rep("test_1", times=30)
#bind both vectors together to make a df for test_1
test_1_bind <- data.frame(record_id, Variables)

#repeat for test_2 and test_3
record_id_2 <- rep("test_2", times=30)
record_id_3 <- rep("test_3", times=30)
#bind test_2 and test_3 dfs, rename columns to match test_1_bind df
test_2_bind <- data.frame(record_id_2, Variables)
colnames(test_2_bind) <- c("record_id", "Variables")
test_3_bind <- data.frame(record_id_3, Variables)
colnames(test_3_bind) <- c("record_id", "Variables")

#bind all 3 data frames together
dospert_bind <- rbind(test_1_bind, test_2_bind, test_3_bind)

#using for loop to make vectors and build a data frame
RT = c(for(column in df_t[-1]) {
  df_t[1:30, "column"]
})
RP = c(for(column in df_t[-1]) {
  df_t[31:60, "column"]
})
RB = c(for(column in df_t[-1]) {
  df_t[61:90, "column"]
})

risk_values <- data.frame(record_id = rep(colnames(df_t[-1]), each=30),
                          RT = r_taking,
                          RP = r_perception,
                          RB = r_benefits)
return(risk_values)



RT = c(for(column in 2:ncol(df_t)) {
  df_t[1:30, "column"]
})
RP = c(for(column in 2:ncol(df_t)) {
  df_t[31:60, "column"]
})
RB = c(for(column in 2:ncol(df_t)) {
  df_t[61:90, "column"]
})



for (i in seq_along(df_t)) {
  risk_t <- df_t[1:30, i]
  risk_p <- df_t[31:60, i]
  risk_b <- df_t[61:90, i]
}