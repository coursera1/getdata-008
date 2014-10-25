---
title: "README"
output: html_document
---

This README explaines how the script *run_analysis.R* works.
It is a part of the "Getting and Cleaning Data" Course Project.

# CodeBook
more details about the variables and data source can be obtain from this file: CodeBook.md

It is assumed that the datafiles are in the original directories and sub-directonries wich are:

* "UCI HAR Dataset": features and activity labels files
* "UCI HAR Dataset/train": training subject, training set and labels files
* "UCI HAR Dataset/test": test subject, test set and labels files

Here are the main steps of the script:

* We'll use the dplyr package to simplify some the code
* We start by loading the features and extracting those concerning the mean and standard deviations
* We then prepare column classes for reading only the necessary columns
* We prepare column names and drop unused levels
* We load the activity labels
* We load the train subject and labels
* We load the train set and name the column
* We load the test subject and labels
* We load the test set and name the column
* We add setName, subjectID and activities to train and test set
* We merge the train and test sets to form the *tidySet*
* We then prepare the second dataset by grouping on the setName, SubjectID and ActivityName
* We obtain the second dataset *groupedTidySet* by summarising each column variables with the mean function


