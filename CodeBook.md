---
title: "CodeBook"
output: html_document
---

# Introduction

The script "run_analysis.R" creates a tidy dataset "tidySet" (see README.md for more details)

These datasets were constructed from the followind data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This set is obtained by following the instructions given in the "Getting and Cleaning Data" course project:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Variables description

Each record is contains the following variables:

* SetName:  describes if the subject is from the "training" or "test" group
* SubjectID: the id of the subject (between 1 and 30)
* ActivityName: the name of the activity the subject is performing (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* A 86-feature vector with the average (for each activity and subject) of the mean and standard deviation of time and frequency domain variables. They were selected by matching all variables names with "mean" or "std" (case insensitive match). Features are normalized and bounded within [-1,1]

## Names of the feature vector variables
1. avg-tBodyAcc-mean()-X
2. avg-tBodyAcc-mean()-Y
3. avg-tBodyAcc-mean()-Z
4. avg-tBodyAcc-std()-X
5. avg-tBodyAcc-std()-Y
6. avg-tBodyAcc-std()-Z
7. avg-tGravityAcc-mean()-X
8. avg-tGravityAcc-mean()-Y
9. avg-tGravityAcc-mean()-Z
10. avg-tGravityAcc-std()-X
11. avg-tGravityAcc-std()-Y
12. avg-tGravityAcc-std()-Z
13. avg-tBodyAccJerk-mean()-X
14. avg-tBodyAccJerk-mean()-Y
15. avg-tBodyAccJerk-mean()-Z
16. avg-tBodyAccJerk-std()-X
17. avg-tBodyAccJerk-std()-Y
18. avg-tBodyAccJerk-std()-Z
19. avg-tBodyGyro-mean()-X
20. avg-tBodyGyro-mean()-Y
21. avg-tBodyGyro-mean()-Z
22. avg-tBodyGyro-std()-X
23. avg-tBodyGyro-std()-Y
24. avg-tBodyGyro-std()-Z
25. avg-tBodyGyroJerk-mean()-X
26. avg-tBodyGyroJerk-mean()-Y
27. avg-tBodyGyroJerk-mean()-Z
28. avg-tBodyGyroJerk-std()-X
29. avg-tBodyGyroJerk-std()-Y
30. avg-tBodyGyroJerk-std()-Z
31. avg-tBodyAccMag-mean()
32. avg-tBodyAccMag-std()
33. avg-tGravityAccMag-mean()
34. avg-tGravityAccMag-std()
35. avg-tBodyAccJerkMag-mean()
36. avg-tBodyAccJerkMag-std()
37. avg-tBodyGyroMag-mean()
38. avg-tBodyGyroMag-std()
39. avg-tBodyGyroJerkMag-mean()
40. avg-tBodyGyroJerkMag-std()
41. avg-fBodyAcc-mean()-X
42. avg-fBodyAcc-mean()-Y
43. avg-fBodyAcc-mean()-Z
44. avg-fBodyAcc-std()-X
45. avg-fBodyAcc-std()-Y
46. avg-fBodyAcc-std()-Z
47. avg-fBodyAcc-meanFreq()-X
48. avg-fBodyAcc-meanFreq()-Y
49. avg-fBodyAcc-meanFreq()-Z
50. avg-fBodyAccJerk-mean()-X
51. avg-fBodyAccJerk-mean()-Y
52. avg-fBodyAccJerk-mean()-Z
53. avg-fBodyAccJerk-std()-X
54. avg-fBodyAccJerk-std()-Y
55. avg-fBodyAccJerk-std()-Z
56. avg-fBodyAccJerk-meanFreq()-X
57. avg-fBodyAccJerk-meanFreq()-Y
58. avg-fBodyAccJerk-meanFreq()-Z
59. avg-fBodyGyro-mean()-X
60. avg-fBodyGyro-mean()-Y
61. avg-fBodyGyro-mean()-Z
62. avg-fBodyGyro-std()-X
63. avg-fBodyGyro-std()-Y
64. avg-fBodyGyro-std()-Z
65. avg-fBodyGyro-meanFreq()-X
66. avg-fBodyGyro-meanFreq()-Y
67. avg-fBodyGyro-meanFreq()-Z
68. avg-fBodyAccMag-mean()
69. avg-fBodyAccMag-std()
70. avg-fBodyAccMag-meanFreq()
71. avg-fBodyBodyAccJerkMag-mean()
72. avg-fBodyBodyAccJerkMag-std()
73. avg-fBodyBodyAccJerkMag-meanFreq()
74. avg-fBodyBodyGyroMag-mean()
75. avg-fBodyBodyGyroMag-std()
76. avg-fBodyBodyGyroMag-meanFreq()
77. avg-fBodyBodyGyroJerkMag-mean()
78. avg-fBodyBodyGyroJerkMag-std()
79. avg-fBodyBodyGyroJerkMag-meanFreq()
80. avg-angle(tBodyAccMean,gravity)
81. avg-angle(tBodyAccJerkMean),gravityMean)
82. avg-angle(tBodyGyroMean,gravityMean)
83. avg-angle(tBodyGyroJerkMean,gravityMean)
84. avg-angle(X,gravityMean)
85. avg-angle(Y,gravityMean)
86. avg-angle(Z,gravityMean)



# Feature categories

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were extracted from the original dataset are: 

* mean(): Mean value
* std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

All of these variables were then averaged for each subject and activity.

# License:
Use of the original dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


The original dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
