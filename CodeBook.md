---
title: "CodeBook"
author: "Michael"
date: "Thursday, May 14, 2015"
---
## Purpose
The analysis performed here was done as part of an exercise in the JHU Data Science Specialization Course "Getting and Cleaning Data" offered through Coursera.

This file provides a codebook documenting the tidy_data.txt file
For documentation on the scripts used to produce tidy_data.txt see README.md

## Background + Original Data
This data was derived from experimental accelorametor and gyroscope data collected to study activities by basic movements as part of a University of California, Irvine study "Human Activity Recognition Using Smartphones":  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data from that study was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
More information on the original files is contained within the `README.txt` file in the UCI HAR Dataset, that information is expanded in:

* `features_info.txt` describes the features they collected and modifications they performed in support of their analysis
* `features.txt` provides a full list of the features in the originally published data set
* `activity_labels.txt` provides a key for taking activity codes and finding the original label.

All of which are available in the UCI HAR Dataset.  


## Results
The remainder of this file documents the data in tidy_data.txt in this dataset which consists of 1 row addressing each combination of: 

* "subject": individual subject
* "activity": Activity undertaken

Within each row 6 columns about the linear accelleartion of the subject during that movement:

*   "tBodyAcc.mean...X"	:	average of	mean of	X coordinate of	Body Linear Accelleration	measurement
*	"tBodyAcc.mean...Y"	:	average of	mean of	Y coordinate of	Body Linear Accelleration	measurement
*	"tBodyAcc.mean...Z"	:	average of	mean of	Z coordinate of	Body Linear Accelleration	measurement
*	"tBodyAcc.std...X"	:	average of	standard deviation of	X coordinate of	Body Linear Accelleration	measurement
*	"tBodyAcc.std...Y"	:	average of	standard deviation of	Y coordinate of	Body Linear Accelleration	measurement
*	"tBodyAcc.std...Z"	:	average of	standard deviation of	Z coordinate of	Body Linear Accelleration	measurement

6 columns about the component of linear accelleration attributed to gravity by the original researchers:

*	"tGravityAcc.mean...X"	:	average of	mean of	X coordinate of	Linear Accelleration due to gravity	measurement
*	"tGravityAcc.mean...Y"	:	average of	mean of	Y coordinate of	Linear Accelleration due to gravity	measurement
*	"tGravityAcc.mean...Z"	:	average of	mean of	Z coordinate of	Linear Accelleration due to gravity	measurement
*	"tGravityAcc.std...X"	:	average of	standard deviation of	X coordinate of	Linear Accelleration due to gravity	measurement
*	"tGravityAcc.std...Y"	:	average of	standard deviation of	Y coordinate of	Linear Accelleration due to gravity	measurement
*	"tGravityAcc.std...Z"	:	average of	standard deviation of	Z coordinate of	Linear Accelleration due to gravity	measurement

6 columns about the rate of change in linear accelleration (jerkiness):

*	"tBodyAccJerk.mean...X"	:	average of	mean of	X coordinate of	change in Body Linear Accelleration	measurement
*	"tBodyAccJerk.mean...Y"	:	average of	mean of	Y coordinate of	change in Body Linear Accelleration	measurement
*	"tBodyAccJerk.mean...Z"	:	average of	mean of	Z coordinate of	change in Body Linear Accelleration	measurement
*	"tBodyAccJerk.std...X"	:	average of	standard deviation of	X coordinate of	change in Body Linear Accelleration	measurement
*	"tBodyAccJerk.std...Y"	:	average of	standard deviation of	Y coordinate of	change in Body Linear Accelleration	measurement
*	"tBodyAccJerk.std...Z"	:	average of	standard deviation of	Z coordinate of	change in Body Linear Accelleration	measurement

6 columns about the angular accelleartion of the subject during that movement:

*	"tBodyGyro.mean...X"	:	average of	mean of	X coordinate of	Body Angular Accelleration	measurement
*	"tBodyGyro.mean...Y"	:	average of	mean of	Y coordinate of	Body Angular Accelleration	measurement
*	"tBodyGyro.mean...Z"	:	average of	mean of	Z coordinate of	Body Angular Accelleration	measurement
*	"tBodyGyro.std...X"	:	average of	standard deviation of	X coordinate of	Body Angular Accelleration	measurement
*	"tBodyGyro.std...Y"	:	average of	standard deviation of	Y coordinate of	Body Angular Accelleration	measurement
*	"tBodyGyro.std...Z"	:	average of	standard deviation of	Z coordinate of	Body Angular Accelleration	measurement

6 columns about the rate of change in angular accelleration (jerkiness):

*	"tBodyGyroJerk.mean...X"	:	average of	mean of	X coordinate of	Change in Body Angular Accelleration	measurement
*	"tBodyGyroJerk.mean...Y"	:	average of	mean of	Y coordinate of	Change in Body Angular Accelleration	measurement
*	"tBodyGyroJerk.mean...Z"	:	average of	mean of	Z coordinate of	Change in Body Angular Accelleration	measurement
*	"tBodyGyroJerk.std...X"	:	average of	standard deviation of	X coordinate of	Change in Body Angular Accelleration	measurement
*	"tBodyGyroJerk.std...Y"	:	average of	standard deviation of	Y coordinate of	Change in Body Angular Accelleration	measurement
*	"tBodyGyroJerk.std...Z"	:	average of	standard deviation of	Z coordinate of	Change in Body Angular Accelleration	measurement

10 columns containing the mean and standard deviation of the euclidean magnitude of the subject's linear and angular accelleration:

*	"tBodyAccMag.mean.."	:	average of	mean of	magnitude of	Body Linear Accelleration	measurement
*	"tBodyAccMag.std.."	:	average of	standard deviation of	magnitude of	Body Linear Accelleration	measurement
*	"tGravityAccMag.mean.."	:	average of	mean of	magnitude of	Linear Accelleration due to gravity	measurement
*	"tGravityAccMag.std.."	:	average of	standard deviation of	magnitude of	Linear Accelleration due to gravity	measurement
*	"tBodyAccJerkMag.mean.."	:	average of	mean of	magnitude of	change in Body Linear Accelleration	measurement
*	"tBodyAccJerkMag.std.."	:	average of	standard deviation of	magnitude of	change in Body Linear Accelleration	measurement
*	"tBodyGyroMag.mean.."	:	average of	mean of	magnitude of	Body Angular Accelleration	measurement
*	"tBodyGyroMag.std.."	:	average of	standard deviation of	magnitude of	Body Angular Accelleration	measurement
*	"tBodyGyroJerkMag.mean.."	:	average of	mean of	magnitude of	Change in Body Angular Accelleration	measurement
*	"tBodyGyroJerkMag.std.."	:	average of	standard deviation of	magnitude of	Change in Body Angular Accelleration	measurement

26 columns containing frequency domain information on the subjects accelleration not attributatable to gravity

*	"fBodyAcc.mean...X"	:	average of	mean of	X coordinate of	frequency of Body Linear Accelleration	measurement
*	"fBodyAcc.mean...Y"	:	average of	mean of	Y coordinate of	frequency of Body Linear Accelleration	measurement
*	"fBodyAcc.mean...Z"	:	average of	mean of	Z coordinate of	frequency of Body Linear Accelleration	measurement
*	"fBodyAcc.std...X"	:	average of	standard deviation of	X coordinate of	frequency of Body Linear Accelleration	measurement
*	"fBodyAcc.std...Y"	:	average of	standard deviation of	Y coordinate of	frequency of Body Linear Accelleration	measurement
*	"fBodyAcc.std...Z"	:	average of	standard deviation of	Z coordinate of	frequency of Body Linear Accelleration	measurement
*	"fBodyAccJerk.mean...X"	:	average of	mean of	X coordinate of	frequency signal from change in body linear accelleration	measurement
*	"fBodyAccJerk.mean...Y"	:	average of	mean of	Y coordinate of	frequency signal from change in body linear accelleration	measurement
*	"fBodyAccJerk.mean...Z"	:	average of	mean of	Z coordinate of	frequency signal from change in body linear accelleration	measurement
*	"fBodyAccJerk.std...X"	:	average of	standard deviation of	X coordinate of	frequency signal from change in body linear accelleration	measurement
*	"fBodyAccJerk.std...Y"	:	average of	standard deviation of	Y coordinate of	frequency signal from change in body linear accelleration	measurement
*	"fBodyAccJerk.std...Z"	:	average of	standard deviation of	Z coordinate of	frequency signal from change in body linear accelleration	measurement
*	"fBodyGyro.mean...X"	:	average of	mean of	X coordinate of	frequency of Body Angular Accelleration	measurement
*	"fBodyGyro.mean...Y"	:	average of	mean of	Y coordinate of	frequency of Body Angular Accelleration	measurement
*	"fBodyGyro.mean...Z"	:	average of	mean of	Z coordinate of	frequency of Body Angular Accelleration	measurement
*	"fBodyGyro.std...X"	:	average of	standard deviation of	X coordinate of	frequency of Body Angular Accelleration	measurement
*	"fBodyGyro.std...Y"	:	average of	standard deviation of	Y coordinate of	frequency of Body Angular Accelleration	measurement
*	"fBodyGyro.std...Z"	:	average of	standard deviation of	Z coordinate of	frequency of Body Angular Accelleration	measurement
*	"fBodyAccMag.mean.."	:	average of	mean of	magnitude of	frequency signal from body linear accelleration	measurement
*	"fBodyAccMag.std.."	:	average of	standard deviation of	magnitude of	frequency signal from body linear accelleration	measurement
*	"fBodyBodyAccJerkMag.mean.."	:	average of	mean of	magnitude of	frequency signal of change in body linear accelleration	measurement
*	"fBodyBodyAccJerkMag.std.."	:	average of	standard deviation of	magnitude of	frequency signal of change in body linear accelleration	measurement
*	"fBodyBodyGyroMag.mean.."	:	average of	mean of	magnitude of	frequency signal from body angular accelleration	measurement
*	"fBodyBodyGyroMag.std.."	:	average of	standard deviation of	magnitude of	frequency signal from body angular accelleration	measurement
*	"fBodyBodyGyroJerkMag.mean.."	:	average of	mean of	magnitude of	frequency signal of change in body angular accelleration	measurement
*	"fBodyBodyGyroJerkMag.std.."	:	average of	standard deviation of	magnitude of	frequency signal of change in body angular accelleration	measurement


