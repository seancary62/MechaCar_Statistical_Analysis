
# Deliverable 1
library(tidyverse)

df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

head(df)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df))

#Deliverable 2
#import Suspension_Coil.csv
df_sus <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

head(df_sus)

total_summary <- df_sus %>% summarize(Mean=mean(PSI), Median=median(PSI), Var=var(PSI), SD=sd(PSI)) #c

lot_summary <- df_sus %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Var=var(PSI), SD=sd(PSI))

#Deliverable 3
t.test(df_sus$PSI, mu=1500)


var_lot1 <- df_sus$PSI[df_sus$Manufacturing_Lot=="Lot1"]
var_lot2 <- df_sus$PSI[df_sus$Manufacturing_Lot=="Lot2"]
var_lot3 <- df_sus$PSI[df_sus$Manufacturing_Lot=="Lot3"]


t.test(var_lot1, mu=1500)
t.test(var_lot2, mu=1500)
t.test(var_lot3, mu=1500)

?cor()
       
head(var_lot3)
