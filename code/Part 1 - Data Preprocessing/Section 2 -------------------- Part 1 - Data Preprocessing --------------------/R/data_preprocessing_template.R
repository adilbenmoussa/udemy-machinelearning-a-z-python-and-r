# Data Preprocessing Template

dataset = read.csv('Data.csv')
# dataset = dataset[, 2:3]

# import and include ca tools
#install.packages('caTools')
library(caTools)
# split the dataset
set.seed(1234)

# Splitting the dataset into the Training set and Test set
#split ratio, is based on traning set (.8)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set= subset(dataset, split == FALSE)

# training_set[, 2:3]= scale(training_set[, 2:3])
# test_set[, 2:3]= scale(test_set[, 2:3])
