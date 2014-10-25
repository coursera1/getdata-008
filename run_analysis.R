## Reading the data
###################
## It is assumed that the datafiles are in the original directories and sub-directonries wich are:
## "UCI HAR Dataset": features and activity labels files
## "UCI HAR Dataset/train": training subject, training set and lablels files
## "UCI HAR Dataset/test": test subject, test set and lablels files

setwd("./UCI HAR Dataset")

## We'll use the dplyr package to simplify the code
suppressPackageStartupMessages(library(dplyr))

## Load features
################

features<-read.table("features.txt", header = FALSE, col.names=c("index", "name"))

##  Extract only those concerning mean (or Mean) and std
featuresExtract<-grepl("mean|std", features$name, ignore.case = TRUE)

## Prepare column classes for reading: either numeric or NULL (to skip the column)
columnClasses<-ifelse(featuresExtract, "numeric", "NULL")

## Prepare column names and drop unused levels
columnNames<-droplevels(features$name[featuresExtract])


## Load labels
##############

activityLabels<-read.table("activity_labels.txt", header = FALSE, col.names=c("index", "ActivityName"))

## Load train set
#################

setwd("./train")
trainSubject<-read.table("subject_train.txt", header = FALSE, col.names=c("subjectID"))
trainLabels<-read.table("y_train.txt", header = FALSE)

trainSet<-read.table("X_train.txt", header = FALSE, colClasses = columnClasses)

## Name the columns
names(trainSet)<-columnNames

## The "Inertial Signals" are not used because they do not contains "mean" nor "std" values. They're only raw data

## Load test set
################
setwd("../test")
testSubject<-read.table("subject_test.txt", header = FALSE, col.names=c("subjectID"))
testLabels<-read.table("y_test.txt", header = FALSE)

testSet<-read.table("X_test.txt", header = FALSE, colClasses = columnClasses)

## Name the columns
names(testSet)<-columnNames

## The "Inertial Signals" are not used because they do not contains "mean" nor "std" values. They're only raw data.

## Start of transformation
##########################

## Add setName, subjectID and activities to train and test set
trainSet<-cbind("training", trainSubject, activityLabels$ActivityName[trainLabels$V1], trainSet)
names(trainSet)[1:3]<-c("SetName", "SubjectId", "ActivityName")

testSet<-cbind("test", testSubject, activityLabels$ActivityName[testLabels$V1], testSet)
names(testSet)[1:3]<-c("SetName", "SubjectId", "ActivityName")

## Merge the train and test sets
tidySet<-tbl_df(rbind(trainSet, testSet))


## Prepare second data set
##########################

groupTidySet<-group_by(tidySet, SetName, SubjectId, ActivityName)  ## SetName added to keep it in the summarise
groupTidySet<-summarise_each(groupTidySet, funs(mean))

## Write dataset to file
setwd("../")
write.table(groupTidySet, "tidySet.txt", row.name=FALSE)

