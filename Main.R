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


# https://archive.ics.uci.edu/ml/datasets/credit+approval
# https://datahub.io/machine-learning/credit-approval
# https://www.openml.org/d/29
# https://www.bni.co.id/Portals/1/BNI/Personal/Kartu%20Kredit/Docs/formulir-aplikasi-kk-bni.pdf
# https://medium.com/@urvashilluniya/convert-multiple-categorical-columns-into-numeric-columns-in-single-line-of-code-577bab825635