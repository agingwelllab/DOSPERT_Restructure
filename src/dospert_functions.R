# function to restructure df for analysis
dclean <- function(draw_df) {
  
  # remove unnecessary column for "complete" form status
  draw_wide <- select(draw_df, -dospert_complete)
  
  # separate df by risk type to create RT, RP, and RB columns
  drt_long <- draw_wide[, 1:31] %>% # make separate df for RT scores
    gather(variables, RT, soc_rt_1:eth_rt_6, factor_key = TRUE)
  
  drp_long <- draw_wide[, 32:61] %>% # make separate df for RP scores
    gather(variables, RP, soc_rp_1:eth_rp_6, factor_key = TRUE)
  
  drb_long <- draw_wide[, 62:91] %>% # make separate df for RB scores
    gather(variables, RB, soc_rb_1:eth_rb_6, factor_key = TRUE)
  
  # separate variable column into 'domain', 'risk_type', and 'q_number'
  drt_long <- drt_long %>%
    separate(variables, c('domain', 'risk_type', 'q_number'), '_')
  
  # remove 'risk_type' column
  drt_long <- select(drt_long, -risk_type) 
  
  # bind risk type dfs together to create one long df for all risk types
  dtotal_long <- cbind(drt_long, drp_long, drb_long)
  
  # remove redundant 'variables' columns
  dtotal_clean <- dtotal_long %>% 
    select(-variables)
  
  # arrange clean df by record id and domain
  dtotal_clean <- arrange(dtotal_clean, record_id, domain)
}

# create function to turn clean data into subscore sums for each record_id
dsum <- function(dtotal_clean) {
  
  # create dtotal_sum df with domain subscores for each record_id
  dtotal_sum <- aggregate(
    cbind(RT,RP,RB) ~ record_id + domain, 
    data = dtotal_clean, 
    FUN = sum
  )
  
  # sort data by record_id
  dtotal_sum <- dtotal_sum %>%
    arrange(record_id)
}
