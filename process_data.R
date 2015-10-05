wd <- "~/GitHub/Poker-Rule-Induction"

setwd(wd)

# read in the training file and prepare for combining with test.
train <- read.csv("train.csv", as.is = TRUE)
train$Source <- "Train"
train$id <- 0

# read in the test file and prepare for combining with train.
test <- read.csv("test.csv", as.is = TRUE)
test$Source <- "Test"
test$hand <- 0

# combine the data files for feature generation
library("dplyr")
train <- select(train, id, Source, hand, S1, C1, S2, C2, S3, C3, S4, C4, S5, C5)
test <- select(test, id, Source, hand, S1, C1, S2, C2, S3, C3, S4, C4, S5, C5)

df <- rbind(train, test)
