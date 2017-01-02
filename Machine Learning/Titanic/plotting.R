train <- read.csv("train.csv", header=TRUE)
test <- read.csv("test.csv", header=TRUE)

test$Survived <- "None"

combinedData <- rbind(train, test)
combinedData$Pclass <- as.factor(combinedData$Pclass)
combinedData$Survived <- as.factor(combinedData$Survived)

library(ggplot2)

ggplot(train, aes(x=Pclass, fill=factor(Survived))) +
  geom_histogram(binwidth=0.5) +
  xlab("Pclass") + 
  ylab("Total Count") +
  labs(fill = "Survived")

ggplot(combinedData, aes(x=Pclass, fill=Survived)) +
  geom_histogram(binwidth=0.5) +
  xlab("Pclass") + 
  ylab("Total Count") +
  labs(fill = "Survived")
