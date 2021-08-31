#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('DomainSpecificRiskTa_DATA_2021-08-13_1618.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$soc_rt_1)="Admitting that your tastes are different from those of a friend."
label(data$rec_rt_1)="Going camping in the wilderness."
label(data$fin_rt_1)="Betting a days income at the horse races."
label(data$fin_rt_2)="Investing 10% of your annual income in a moderate growth diversified fund."
label(data$hea_rt_1)="Drinking heavily at a social function."
label(data$eth_rt_1)="Taking some questionable deductions on your income tax return."
label(data$soc_rt_2)="Disagreeing with an authority figure on a major issue."
label(data$fin_rt_3)="Betting a days income at a high-stake poker game."
label(data$eth_rt_2)="Having an affair with a married person."
label(data$eth_rt_3)="Passing off somebody elses work as your own."
label(data$rec_rt_2)="Going down a ski run that is beyond your ability."
label(data$fin_rt_4)="Investing 5% of your annual income in a very speculative stock"
label(data$rec_rt_3)="Going whitewater rafting at high water in the spring."
label(data$fin_rt_5)="Betting a days income on the outcome of a sporting event."
label(data$hea_rt_2)="Engaging in unprotected sex."
label(data$eth_rt_4)="Revealing a friends secret to someone else."
label(data$hea_rt_3)="Driving a car without wearing a seat belt."
label(data$fin_rt_6)="Investing 10% of your annual income in a new business venture."
label(data$rec_rt_4)="Taking a skydiving class."
label(data$hea_rt_4)="Riding a motorcycle without a helmet."
label(data$soc_rt_3)="Choosing a career that you truly enjoy over a more secure one."
label(data$soc_rt_4)="Speaking your mind about an unpopular issue in a meeting at work."
label(data$hea_rt_5)="Sunbathing without sunscreen."
label(data$rec_rt_5)="Bungee jumping off a tall bridge."
label(data$rec_rt_6)="Piloting a small plane."
label(data$hea_rt_6)="Walking home alone at night in an unsafe area of town."
label(data$soc_rt_5)="Moving to a city fair away from your extended family."
label(data$soc_rt_6)="Starting a new career in your mid-thirties."
label(data$eth_rt_5)="Leaving your young children at home while running an errand."
label(data$eth_rt_6)="Not returning a wallet you found that contains $200"
label(data$soc_rp_1)="Admitting that your tastes are different from those of a friend."
label(data$rec_rp_1)="Going camping in the wilderness."
label(data$fin_rp_1)="Betting a days income at the horse races."
label(data$fin_rp_2)="Investing 10% of your annual income in a moderate growth diversified fund."
label(data$hea_rp_1)="Drinking heavily at a social function."
label(data$eth_rp_1)="Taking some questionable deductions on your income tax return."
label(data$soc_rp_2)="Disagreeing with an authority figure on a major issue."
label(data$fin_rp_3)="Betting a days income at a high-stake poker game."
label(data$eth_rp_2)="Having an affair with a married person."
label(data$eth_rp_3)="Passing off somebody elses work as your own."
label(data$rec_rp_2)="Going down a ski run that is beyond your ability."
label(data$fin_rp_4)="Investing 5% of your annual income in a very speculative stock"
label(data$rec_rp_3)="Going whitewater rafting at high water in the spring."
label(data$fin_rp_5)="Betting a days income on the outcome of a sporting event."
label(data$hea_rp_2)="Engaging in unprotected sex."
label(data$eth_rp_4)="Revealing a friends secret to someone else."
label(data$hea_rp_3)="Driving a car without wearing a seat belt."
label(data$fin_rp_6)="Investing 10% of your annual income in a new business venture."
label(data$rec_rp_4)="Taking a skydiving class."
label(data$hea_rp_4)="Riding a motorcycle without a helmet."
label(data$soc_rp_3)="Choosing a career that you truly enjoy over a more secure one."
label(data$soc_rp_4)="Speaking your mind about an unpopular issue in a meeting at work."
label(data$hea_rp_5)="Sunbathing without sunscreen."
label(data$rec_rp_5)="Bungee jumping off a tall bridge."
label(data$rec_rp_6)="Piloting a small plane."
label(data$hea_rp_6)="Walking home alone at night in an unsafe area of town."
label(data$soc_rp_5)="Moving to a city fair away from your extended family."
label(data$soc_rp_6)="Starting a new career in your mid-thirties"
label(data$eth_rp_5)="Leaving your young children at home while running an errand."
label(data$eth_rp_6)="Not returning a wallet you found that contains $200"
label(data$soc_rb_1)="Admitting that your tastes are different from those of a friend."
label(data$rec_rb_1)="Going camping in the wilderness."
label(data$fin_rb_1)="Betting a days income at the horse races."
label(data$fin_rb_2)="Investing 10% of your annual income in a moderate growth diversified fund."
label(data$hea_rb_1)="Drinking heavily at a social function."
label(data$eth_rb_1)="Taking some questionable deductions on your income tax return."
label(data$soc_rb)="Disagreeing with an authority figure on a major issue."
label(data$fin_rb_3)="Betting a days income at a high-stake poker game."
label(data$eth_rb_2)="Having an affair with a married person."
label(data$eth_rb_3)="Passing off somebody elses work as your own."
label(data$rec_rb_2)="Going down a ski run that is beyond your ability."
label(data$fin_rb_4)="Investing 5% of your annual income in a very speculative stock"
label(data$rec_rb_3)="Going whitewater rafting at high water in the spring."
label(data$fin_rb_5)="Betting a days income on the outcome of a sporting event."
label(data$hea_rb_2)="Engaging in unprotected sex."
label(data$eth_rb_4)="Revealing a friends secret to someone else."
label(data$hea_rb_3)="Driving a car without wearing a seat belt."
label(data$fin_rb_6)="Investing 10% of your annual income in a new business venture."
label(data$rec_rb_4)="Taking a skydiving class."
label(data$hea_rb_4)="Riding a motorcycle without a helmet."
label(data$soc_rb_3)="Choosing a career that you truly enjoy over a more secure one."
label(data$soc_rb_4)="Speaking your mind about an unpopular issue in a meeting at work."
label(data$hea_rb_5)="Sunbathing without sunscreen."
label(data$rec_rb_5)="Bungee jumping off a tall bridge."
label(data$rec_rb_6)="Piloting a small plane."
label(data$hea_rb_6)="Walking home alone at night in an unsafe area of town."
label(data$soc_rb_5)="Moving to a city fair away from your extended family."
label(data$soc_rb_6)="Starting a new career in your mid-thirties"
label(data$eth_rb_5)="Leaving your young children at home while running an errand."
label(data$eth_rb_6)="Not returning a wallet you found that contains $200"
label(data$dospert_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$soc_rt_1.factor = factor(data$soc_rt_1,levels=c("1","2","3","4","5","6","7"))
data$rec_rt_1.factor = factor(data$rec_rt_1,levels=c("1","2","3","4","5","6","7"))
data$fin_rt_1.factor = factor(data$fin_rt_1,levels=c("1","2","3","4","5","6","7"))
data$fin_rt_2.factor = factor(data$fin_rt_2,levels=c("1","2","3","4","5","6","7"))
data$hea_rt_1.factor = factor(data$hea_rt_1,levels=c("1","2","3","4","5","6","7"))
data$eth_rt_1.factor = factor(data$eth_rt_1,levels=c("1","2","3","4","5","6","7"))
data$soc_rt_2.factor = factor(data$soc_rt_2,levels=c("1","2","3","4","5","6","7"))
data$fin_rt_3.factor = factor(data$fin_rt_3,levels=c("1","2","3","4","5","6","7"))
data$eth_rt_2.factor = factor(data$eth_rt_2,levels=c("1","2","3","4","5","6","7"))
data$eth_rt_3.factor = factor(data$eth_rt_3,levels=c("1","2","3","4","5","6","7"))
data$rec_rt_2.factor = factor(data$rec_rt_2,levels=c("1","2","3","4","5","6","7"))
data$fin_rt_4.factor = factor(data$fin_rt_4,levels=c("1","2","3","4","5","6","7"))
data$rec_rt_3.factor = factor(data$rec_rt_3,levels=c("1","2","3","4","5","6","7"))
data$fin_rt_5.factor = factor(data$fin_rt_5,levels=c("1","2","3","4","5","6","7"))
data$hea_rt_2.factor = factor(data$hea_rt_2,levels=c("1","2","3","4","5","6","7"))
data$eth_rt_4.factor = factor(data$eth_rt_4,levels=c("1","2","3","4","5","6","7"))
data$hea_rt_3.factor = factor(data$hea_rt_3,levels=c("1","2","3","4","5","6","7"))
data$fin_rt_6.factor = factor(data$fin_rt_6,levels=c("1","2","3","4","5","6","7"))
data$rec_rt_4.factor = factor(data$rec_rt_4,levels=c("1","2","3","4","5","6","7"))
data$hea_rt_4.factor = factor(data$hea_rt_4,levels=c("1","2","3","4","5","6","7"))
data$soc_rt_3.factor = factor(data$soc_rt_3,levels=c("1","2","3","4","5","6","7"))
data$soc_rt_4.factor = factor(data$soc_rt_4,levels=c("1","2","3","4","5","6","7"))
data$hea_rt_5.factor = factor(data$hea_rt_5,levels=c("1","2","3","4","5","6","7"))
data$rec_rt_5.factor = factor(data$rec_rt_5,levels=c("1","2","3","4","5","6","7"))
data$rec_rt_6.factor = factor(data$rec_rt_6,levels=c("1","2","3","4","5","6","7"))
data$hea_rt_6.factor = factor(data$hea_rt_6,levels=c("1","2","3","4","5","6","7"))
data$soc_rt_5.factor = factor(data$soc_rt_5,levels=c("1","2","3","4","5","6","7"))
data$soc_rt_6.factor = factor(data$soc_rt_6,levels=c("1","2","3","4","5","6","7"))
data$eth_rt_5.factor = factor(data$eth_rt_5,levels=c("1","2","3","4","5","6","7"))
data$eth_rt_6.factor = factor(data$eth_rt_6,levels=c("1","2","3","4","5","6","7"))
data$soc_rp_1.factor = factor(data$soc_rp_1,levels=c("1","2","3","4","5","6","7"))
data$rec_rp_1.factor = factor(data$rec_rp_1,levels=c("1","2","3","4","5","6","7"))
data$fin_rp_1.factor = factor(data$fin_rp_1,levels=c("1","2","3","4","5","6","7"))
data$fin_rp_2.factor = factor(data$fin_rp_2,levels=c("1","2","3","4","5","6","7"))
data$hea_rp_1.factor = factor(data$hea_rp_1,levels=c("1","2","3","4","5","6","7"))
data$eth_rp_1.factor = factor(data$eth_rp_1,levels=c("1","2","3","4","5","6","7"))
data$soc_rp_2.factor = factor(data$soc_rp_2,levels=c("1","2","3","4","5","6","7"))
data$fin_rp_3.factor = factor(data$fin_rp_3,levels=c("1","2","3","4","5","6","7"))
data$eth_rp_2.factor = factor(data$eth_rp_2,levels=c("1","2","3","4","5","6","7"))
data$eth_rp_3.factor = factor(data$eth_rp_3,levels=c("1","2","3","4","5","6","7"))
data$rec_rp_2.factor = factor(data$rec_rp_2,levels=c("1","2","3","4","5","6","7"))
data$fin_rp_4.factor = factor(data$fin_rp_4,levels=c("1","2","3","4","5","6","7"))
data$rec_rp_3.factor = factor(data$rec_rp_3,levels=c("1","2","3","4","5","6","7"))
data$fin_rp_5.factor = factor(data$fin_rp_5,levels=c("1","2","3","4","5","6","7"))
data$hea_rp_2.factor = factor(data$hea_rp_2,levels=c("1","2","3","4","5","6","7"))
data$eth_rp_4.factor = factor(data$eth_rp_4,levels=c("1","2","3","4","5","6","7"))
data$hea_rp_3.factor = factor(data$hea_rp_3,levels=c("1","2","3","4","5","6","7"))
data$fin_rp_6.factor = factor(data$fin_rp_6,levels=c("1","2","3","4","5","6","7"))
data$rec_rp_4.factor = factor(data$rec_rp_4,levels=c("1","2","3","4","5","6","7"))
data$hea_rp_4.factor = factor(data$hea_rp_4,levels=c("1","2","3","4","5","6","7"))
data$soc_rp_3.factor = factor(data$soc_rp_3,levels=c("1","2","3","4","5","6","7"))
data$soc_rp_4.factor = factor(data$soc_rp_4,levels=c("1","2","3","4","5","6","7"))
data$hea_rp_5.factor = factor(data$hea_rp_5,levels=c("1","2","3","4","5","6","7"))
data$rec_rp_5.factor = factor(data$rec_rp_5,levels=c("1","2","3","4","5","6","7"))
data$rec_rp_6.factor = factor(data$rec_rp_6,levels=c("1","2","3","4","5","6","7"))
data$hea_rp_6.factor = factor(data$hea_rp_6,levels=c("1","2","3","4","5","6","7"))
data$soc_rp_5.factor = factor(data$soc_rp_5,levels=c("1","2","3","4","5","6","7"))
data$soc_rp_6.factor = factor(data$soc_rp_6,levels=c("1","2","3","4","5","6","7"))
data$eth_rp_5.factor = factor(data$eth_rp_5,levels=c("1","2","3","4","5","6","7"))
data$eth_rp_6.factor = factor(data$eth_rp_6,levels=c("1","2","3","4","5","6","7"))
data$soc_rb_1.factor = factor(data$soc_rb_1,levels=c("1","2","3","4","5","6","7"))
data$rec_rb_1.factor = factor(data$rec_rb_1,levels=c("1","2","3","4","5","6","7"))
data$fin_rb_1.factor = factor(data$fin_rb_1,levels=c("1","2","3","4","5","6","7"))
data$fin_rb_2.factor = factor(data$fin_rb_2,levels=c("1","2","3","4","5","6","7"))
data$hea_rb_1.factor = factor(data$hea_rb_1,levels=c("1","2","3","4","5","6","7"))
data$eth_rb_1.factor = factor(data$eth_rb_1,levels=c("1","2","3","4","5","6","7"))
data$soc_rb.factor = factor(data$soc_rb,levels=c("1","2","3","4","5","6","7"))
data$fin_rb_3.factor = factor(data$fin_rb_3,levels=c("1","2","3","4","5","6","7"))
data$eth_rb_2.factor = factor(data$eth_rb_2,levels=c("1","2","3","4","5","6","7"))
data$eth_rb_3.factor = factor(data$eth_rb_3,levels=c("1","2","3","4","5","6","7"))
data$rec_rb_2.factor = factor(data$rec_rb_2,levels=c("1","2","3","4","5","6","7"))
data$fin_rb_4.factor = factor(data$fin_rb_4,levels=c("1","2","3","4","5","6","7"))
data$rec_rb_3.factor = factor(data$rec_rb_3,levels=c("1","2","3","4","5","6","7"))
data$fin_rb_5.factor = factor(data$fin_rb_5,levels=c("1","2","3","4","5","6","7"))
data$hea_rb_2.factor = factor(data$hea_rb_2,levels=c("1","2","3","4","5","6","7"))
data$eth_rb_4.factor = factor(data$eth_rb_4,levels=c("1","2","3","4","5","6","7"))
data$hea_rb_3.factor = factor(data$hea_rb_3,levels=c("1","2","3","4","5","6","7"))
data$fin_rb_6.factor = factor(data$fin_rb_6,levels=c("1","2","3","4","5","6","7"))
data$rec_rb_4.factor = factor(data$rec_rb_4,levels=c("1","2","3","4","5","6","7"))
data$hea_rb_4.factor = factor(data$hea_rb_4,levels=c("1","2","3","4","5","6","7"))
data$soc_rb_3.factor = factor(data$soc_rb_3,levels=c("1","2","3","4","5","6","7"))
data$soc_rb_4.factor = factor(data$soc_rb_4,levels=c("1","2","3","4","5","6","7"))
data$hea_rb_5.factor = factor(data$hea_rb_5,levels=c("1","2","3","4","5","6","7"))
data$rec_rb_5.factor = factor(data$rec_rb_5,levels=c("1","2","3","4","5","6","7"))
data$rec_rb_6.factor = factor(data$rec_rb_6,levels=c("1","2","3","4","5","6","7"))
data$hea_rb_6.factor = factor(data$hea_rb_6,levels=c("1","2","3","4","5","6","7"))
data$soc_rb_5.factor = factor(data$soc_rb_5,levels=c("1","2","3","4","5","6","7"))
data$soc_rb_6.factor = factor(data$soc_rb_6,levels=c("1","2","3","4","5","6","7"))
data$eth_rb_5.factor = factor(data$eth_rb_5,levels=c("1","2","3","4","5","6","7"))
data$eth_rb_6.factor = factor(data$eth_rb_6,levels=c("1","2","3","4","5","6","7"))
data$dospert_complete.factor = factor(data$dospert_complete,levels=c("0","1","2"))

levels(data$soc_rt_1.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$rec_rt_1.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$fin_rt_1.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$fin_rt_2.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$hea_rt_1.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$eth_rt_1.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$soc_rt_2.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$fin_rt_3.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$eth_rt_2.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$eth_rt_3.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$rec_rt_2.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$fin_rt_4.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$rec_rt_3.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$fin_rt_5.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$hea_rt_2.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$eth_rt_4.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$hea_rt_3.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$fin_rt_6.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$rec_rt_4.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$hea_rt_4.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$soc_rt_3.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$soc_rt_4.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$hea_rt_5.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$rec_rt_5.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$rec_rt_6.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$hea_rt_6.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$soc_rt_5.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$soc_rt_6.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$eth_rt_5.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$eth_rt_6.factor)=c("Extremely Unlikely1","Moderately Unlikely2","Somewhat Unlikely3","Not Sure4","Somewhat Likely5","Moderately Likely6","Extremely Likely7")
levels(data$soc_rp_1.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$rec_rp_1.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$fin_rp_1.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$fin_rp_2.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$hea_rp_1.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$eth_rp_1.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$soc_rp_2.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$fin_rp_3.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$eth_rp_2.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$eth_rp_3.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$rec_rp_2.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$fin_rp_4.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$rec_rp_3.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$fin_rp_5.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$hea_rp_2.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$eth_rp_4.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$hea_rp_3.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$fin_rp_6.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$rec_rp_4.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$hea_rp_4.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$soc_rp_3.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$soc_rp_4.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$hea_rp_5.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$rec_rp_5.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$rec_rp_6.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$hea_rp_6.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$soc_rp_5.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$soc_rp_6.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$eth_rp_5.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$eth_rp_6.factor)=c("Not at all Risky1","Slightly Risky2","Somewhat Risky3","Moderately Risky4","Risky5","Very Risky6","Extremely Risky7")
levels(data$soc_rb_1.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$rec_rb_1.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$fin_rb_1.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$fin_rb_2.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$hea_rb_1.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$eth_rb_1.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$soc_rb.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$fin_rb_3.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$eth_rb_2.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$eth_rb_3.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$rec_rb_2.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$fin_rb_4.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$rec_rb_3.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$fin_rb_5.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$hea_rb_2.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$eth_rb_4.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$hea_rb_3.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$fin_rb_6.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$rec_rb_4.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$hea_rb_4.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$soc_rb_3.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$soc_rb_4.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$hea_rb_5.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$rec_rb_5.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$rec_rb_6.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$hea_rb_6.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$soc_rb_5.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$soc_rb_6.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$eth_rb_5.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$eth_rb_6.factor)=c("No benefits at all1","2","3","Moderate benefits4","5","6","Great benefits7")
levels(data$dospert_complete.factor)=c("Incomplete","Unverified","Complete")
