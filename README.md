---
title: "README"
author: "Michael"
date: "Thursday, May 14, 2015"
---
## Purpose
The analysis performed here was done as part of an exercise in the JHU Data Science Specialization Course "Getting and Cleaning Data" offered through Coursera.

## Background + Original Data
This data was derived from experimental accelorametor and gyroscope data collected to study activities by basic movements as part of a University of California, Irvine study "Human Activity Recognition Using Smartphones":  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

More information on the original study is contained within the `README.txt` file in the UCI HAR Dataset.

## scripts
The remainder of this file documents the code in the .R scripts in this project.  See CodeBook.md for documentation of the data fields in tidy_data.txt

### dataGather.R 
downloads the data file to the expected location:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to dataset.zip
and unzips that to produce the directory "UCI HAR Dataset" in the working directory. 

Run this script first to ensure the correct data is available for run_analysis.R

### run_analysis.R 
Reads in data from UCI HAR Dataset and produces tidy_data.txt

#### section 1: Read original data
This section loads the test and training data, raw activity labels and subject numbers, feature list, and map from activity numbers to descriptive names:
The code assumes that dataGather.R has been executed and the files have been downloaded and are present in the "UCI HAR Dataset" subdirectory of the working directory.

* `features` represents collumn labels from initial data
* `label` represents the activity labels from initial data
* `test` represents raw data from test set -- column names set per `features` 
* `test_activity` represents raw activity characterization from test set
* `test_subject` represents raw subject #s from the test set
* `train` represents raw data from training set -- column names set per `features`
* `train_activity` represents raw activity characterization from training set
* `train_subject` represets raw subject #s from the training set

#### section 2: factor data and produce a single data.frame per subset (test and training)
This section

* `test_label` factor vector with names of activity types for test data
* `train_label` factor vector with names of activity types for training data
* `test_subj` factor vector with subject numbers for test data
* `train_subj` factor vector with subject numbers for training data
* `test2` data values from `test` combined with subject #s (`test_subj`) and activity labels (`test_label`)
* `train2` data values from `train` combined with subject #s (`train_subj`) and activity labels (`train_label`)

#### Section 3: merge the datasets and extract mean and standard deviation rows
This section merges the test and training dataset and extracts the rows neaded to build the tidy_data file required by the assignment.

* `full_data`  all data from the test and training subsets of the original data
* `extract_data` the desired columns, those representing mean or standard deviation and the activity and subject labels needed to identify the observations in the tidy data.

#### Section 4: produce the tidy data
This section does the work of separating the data into groups and computing the mean of each numerical column.

* `group_data` separate the data into groups based on subject and activity
* `tidy_data` take the mean of the remaining columns to produce the tidy data requested

#### Section 5: write the data to a file
This section writes the result of the analysis to a file.

