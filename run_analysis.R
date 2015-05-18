## run_analysis.R
### 1. Merges the training and the test sets to create one data set.
### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
### 3. Uses descriptive activity names to name the activities in the data set
### 4. Appropriately labels the data set with descriptive variable names. 
### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(plyr)
library(dplyr)

## read features
features <- read.table("UCI HAR Dataset/features.txt")
label <- read.table("UCI HAR Dataset/activity_labels.txt")

## Section 1: read Test and training datasets
test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names=features[,2])
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
train<- read.table("UCI HAR Dataset/train/X_train.txt", col.names=features[,2])
train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Section2: combine raw data for test and training data 
## with associated activity and subject labels
test_label <-join(test_activity, label)
train_label <- join(train_activity, label)
test_subj <- factor(test_subject[["V1"]])
train_subj <- factor(train_subject[["V1"]])
test2 <- cbind(test, subject=test_subj, activity=test_label[["V2"]])
train2 <- cbind(train, subject=train_subj, activity=train_label[["V2"]])

## section 3a: merge the datasets
full_data <- rbind(test2, train2)

## section 3b: extracts the mean and standard deviations 
## along with the activity and subject information
extract_data <- full_data[,grepl("(\\.mean\\.)|(\\.std\\.)|(activity)|(subject)", names(full_data))]

## section 4: group the data by subject and activity 
## then compute the mean of each column within the group
## create groups and summarise each collumn
group_data <- group_by(extract_data, subject, activity)
tidy_data <- summarise_each(group_data, funs(mean))

## section 5: write the data to a file
write.table(tidy_data, file='tidy_data.txt', row.name=FALSE)
