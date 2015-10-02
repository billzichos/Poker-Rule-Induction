wd <- "~/GitHub/Poker-Rule-Induction"

setwd(wd)

# The following files are provided
#   - sampleSubmission.csv.zip
#   - test.csv.zip
#   - train.csv.zip

source("~/GitHub/Get-Raw-Data/download.R")
downloadMultKaggleZip("poker-rule-induction","test.csv.zip")
downloadSingleKaggleZip("poker-rule-induction","sampleSubmission.csv.zip", "sampleSubmission.csv")
downloadMultKaggleZip("poker-rule-induction","train.csv.zip")
