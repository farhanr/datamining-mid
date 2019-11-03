data <- read.csv("~/Git/datamining-mid/dataset_29_credit-a.csv", na.strings="")
#summary(data)
#lib(tidyverse)
#lib(naniar)
#lib(ggplot2)

colnames(data) <- c(
  "sex",
  "age",
  "mean_time_adresses",
  "home_status",
  "current_occupation",
  "job_status",
  "mean_time_employers",
  "other_investment",
  "bank_account",
  "time_with_bank",
  "liability_reference",
  "account_reference",
  "monthly_housing_expense",
  "savings_account_balance",
  "approved"
)

levels(data$sex) <- c("female", "male")
data$age <- as.numeric(as.character(data$age))
data$age <- round(data$age,digits=0)
data$`mean_time_adresses` <- round(data$`mean_time_adresses`,digits=1)
levels(data$`home_status`) <- c(
  "sendiri",
  "keluarga", 
  "sewa"
  )
levels(data$`current_occupation`) <- c(
  "petani",
  "guru",
  "pns",
  "pegawai",
  "kasir",
  "doktor",
  "akuntan",
  "jurnalis",
  "koki",
  "nelayan",
  "it support",
  "penyanyi",
  "apoteker",
  "seniman"
)
data <- within(data, rm('job_status'))
data$`mean_time_employers` <- round(data$`mean_time_employers`,digits=1)
levels(data$other_investment) <- c(
  "false",
  "true"
)
levels(data$bank_account) <- c(
  "false",
  "true"
)
data <- within(data, rm('liability_reference'))
data <- within(data, rm('account_reference'))

#ggplot(data, aes(x = sex)) + geom_bar(fill = "#69b3a2", width = 0.4) + theme_grey(base_size = 25) + ggtitle("sex histogram")
#ggplot(data, aes(x = sex, y = age , fill = sex)) + geom_boxplot() + geom_jitter(color="black", size = 0.4, alpha = 0.9) + theme_grey(base_size = 25) + ggtitle("age distribution")
#ggplot(data, aes(x = home_status, fill= home_status)) + geom_bar(width = 0.4) + theme_grey(base_size = 25) + ggtitle("home status distribution")
#mean-time-at-adresses = lama tinggal di tempat sekarang

# https://archive.ics.uci.edu/ml/datasets/credit+approval
# https://datahub.io/machine-learning/credit-approval
# https://www.openml.org/d/29
# https://www.bni.co.id/Portals/1/BNI/Personal/Kartu%20Kredit/Docs/formulir-aplikasi-kk-bni.pdf
# https://medium.com/@urvashilluniya/convert-multiple-categorical-columns-into-numeric-columns-in-single-line-of-code-577bab825635
# https://www.researchgate.net/publication/3297254_A_Compact_and_Accurate_Model_for_Classification/citation/download