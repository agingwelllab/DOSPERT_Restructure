# DOSPERT_RAnalysis
- Repo contains code to analyze data for DOSPERT30 exported from REDCap
- Major changes to the code are saved as different versions
  - DOSPERT_analysis is the cleanest, most recent version, utilizing functions sourced in the src directory.
  - Older versions of the code are in the Old Versions directory. These are unimportant files and can be ignored, just there in case they need to be referenced.
- DOSPERT_scratch_pad is what I used to type and test code without cluttering the main notebook I was working on. This can also be ignored.

## Functions
- dclean(*df*) 
  - restructures the raw data frame from wide format to long format
  - input: raw data frame imported from CSV (*draw_df* in functions script)
    - variable names as columns, separate rows for each participant
  - output: data frame with separate columns for risk taking, risk perception, and expected benefits (*dtotal_clean* in functions script)
    - 6 columns: record id, domain, question number, risk taking scores (RT), risk perception scores (RP), and expected benefit scores (RB)
    - each record id has 30 rows (one for each question)
- dsum(*df*)
  - calculates subscores for each of the 5 domains
    - Ethical (eth), Financial (fin), Health/Safety (hea), Recreation (rec), and Social (soc)
  - input: clean data frame from dclean(*df*)'s output
  - output: data frame with sums for each domain (*dtotal_sum* in functions script)
    - 5 columns: same columns as dclean(*df*) -question number
    - each record_id has 5 rows (one for each domain)

