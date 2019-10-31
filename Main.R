data <- read.csv("~/Downloads/dataset_29_credit-a.csv")
summary(data)
#lib(tidyverse)

colnames(data) <- c(
  "sex",
  "age",
  "mean time adresses",
  "home status",
  "current sccupation",
  "job status",
  "mean time employers",
  "other tnvestment",
  "bank tccount",
  "time with bank",
  "liability reference",
  "account reference",
  "monthly housing expense",
  "savings account balance",
  "approved"
)
levels(data$sex) <- c("", "?", "female", "male")
#data$age <- as.numeric(data$age)
#data$age <- round(data$age)
#mean-time-at-adresses = lama tinggal di tempat sekarang


# https://medium.com/@urvashilluniya/convert-multiple-categorical-columns-into-numeric-columns-in-single-line-of-code-577bab825635