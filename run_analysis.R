## GETTING AND CLEANING DATA PROJECT

## C:/Users/Marttín\Desktop/Data Science/Getting and cleaning data/project/

## setting working directory
setwd("C:/Users/Marttín/Desktop/Data Science/Getting and cleaning data/project/")

## reading first lines to figure out class and other valuable information
train<-read.csv("train/X_train.txt", sep="" ,nrows=10, header=F)

## figuring out col classes
classes<-apply(train, 2, class)

## reading the features file
features<-read.table("features.txt", sep=" ")
features<-as.vector(features[,2])

## Reading the entire training and tests data set and assigning colnames
train<-read.csv("train/X_train.txt", sep="", colClasses=classes, header=F, col.names=features)
test<-read.csv("test/X_test.txt", sep="", colClasses=classes, header=F, col.names=features)


## reading activity labels
act.labels.train<-read.table("train/Y_train.txt", col.names="Activity")
act.labels.test<-read.table("test/Y_test.txt", col.names="Activity")


## reading subject labels
subject.train<-read.table("train/subject_train.txt", col.names="Subject")
subject.test<-read.table("test/subject_test.txt", col.names="Subject")

## merging activity and subject labels in each data set
train<-cbind(train, act.labels.train, subject.train)
test<-cbind(test, act.labels.test, subject.test)


## Merging training and test data sets
data<-rbind(train, test)

## indexes of means and sd
indexes<-grep("mean[^Freq]|std|Activity|Subject", names(data))

## subsetting the data according to the indices
data<-data[,indexes]

## formatting Activity and Subject
activity<-c("Walking", "Walking upstairs", "Walking downstairs", "Sitting", "Standing", "Laying")
data[,"Activity"]<-as.factor(data[,"Activity"])
levels(data[,"Activity"])<-activity

data[,"Subject"]<-as.factor(data[,"Subject"])

## reshaping data with reshape2 package
library(reshape2)

## formating Activity and Subject as id 
dataMelt<-melt(data, id=c("Activity", "Subject"), measure.vars=c(-67,-68))

## computing the mean for each subject and activity
dataMean<-dcast(dataMelt, Subject + Activity~variable, mean)

## ranaming  variables
names2<-gsub("BodyAcc", "Body Acceleration", names(dataMean))
names2<-gsub("GravityAcc", "Gravity Acceleration", names2)
names2<-gsub("BodyGyro", "Body Gyroscope", names2)
names2<-gsub("Jerk", " Jerk", names2)
names2<-gsub("Mag", " Euclidean norm", names2)
names2<-gsub("^f", "FTT ", names2)
names2<-gsub("\\.{3}", " ", names2)
names2<-gsub("^t","", names2)
names2<-gsub("BodyBody", "Body", names2)
names2<-gsub("\\.{2}", "", names2)
names2<-gsub("X", "X Axis", names2)
names2<-gsub("Y", "Y Axis", names2)
names2<-gsub("Z", "Z Axis", names2)

names(dataMean)<-names2

## output
dataMean