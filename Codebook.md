#Code Book for Course Project
#Overview

Source of the original data:
Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#Process

The script run_analysis.R performs the following process to clean up the data and create tiny data sets.

    Read all files features.txt and  for test and train data sets in test and train directory.
    
    Merges the training and the test sets to create one data set, i.e. data_all.
  
    Extracts only the measurements on the mean and standard deviation for each measurement, i.e. dataset1. 
  
    Uses descriptive activity names to name the activities in the data set
  
    Appropriately labels the data set with descriptive variable names. 

    The average of each measurement for each activity and each subject is merged to a second data set. The result is saved as dataset2.txt.




#Output

dataset1.txt

dataset1.txt is a 10299x68 data frame.

    The first column contains subject IDs.
    The second column contains activity names.
    The last 66 columns are measurements.
    Subject IDs are integers between 1 and 30.

dataset2.txt

dataset2.txt is a 180x68 data frame.

    The first column contains subject IDs.
    The second column contains activity names.
    The averages for each of the 66 attributes are in columns 3-68.


# Output_column
The columns included in the output file are listed below:

    subject_id - The id of the experiment participant.
    activity_labels - The name of the activity that the measurements correspond to, like LAYING or WALKING.

All of the following fields represent the mean of recorded data points for the given subject and activity. The detailed description of the different measurement types can be found in the features_info.txt file included in the data zip file.

    tBodyAcc_mean_X
    tBodyAcc_mean_Y
    tBodyAcc_mean_Z
    tGravityAcc_mean_X
    tGravityAcc_mean_Y
    tGravityAcc_mean_Z
    tBodyAccJerk_mean_X
    tBodyAccJerk_mean_Y
    tBodyAccJerk_mean_Z
    tBodyGyro_mean_X
    tBodyGyro_mean_Y
    tBodyGyro_mean_Z
    tBodyGyroJerk_mean_X
    tBodyGyroJerk_mean_Y
    tBodyGyroJerk_mean_Z
    tBodyAccMag_mean
    tGravityAccMag_mean
    tBodyAccJerkMag_mean
    tBodyGyroMag_mean
    tBodyGyroJerkMag_mean
    fBodyAcc_mean_X
    fBodyAcc_mean_Y
    fBodyAcc_mean_Z
    fBodyAccJerk_mean_X
    fBodyAccJerk_mean_Y
    fBodyAccJerk_mean_Z
    fBodyGyro_mean_X
    fBodyGyro_mean_Y
    fBodyGyro_mean_Z
    fBodyAccMag_mean
    fBodyAccJerkMag_mean
    fBodyGyroMag_mean
    fBodyGyroJerkMag_mean
    tBodyAcc_std_X
    tBodyAcc_std_Y
    tBodyAcc_std_Z
    tGravityAcc_std_X
    tGravityAcc_std_Y
    tGravityAcc_std_Z
    tBodyAccJerk_std_X
    tBodyAccJerk_std_Y
    tBodyAccJerk_std_Z
    tBodyGyro_std_X
    tBodyGyro_std_Y
    tBodyGyro_std_Z
    tBodyGyroJerk_std_X
    tBodyGyroJerk_std_Y
    tBodyGyroJerk_std_Z
    tBodyAccMag_std
    tGravityAccMag_std
    tBodyAccJerkMag_std
    tBodyGyroMag_std
    tBodyGyroJerkMag_std
    fBodyAcc_std_X
    fBodyAcc_std_Y
    fBodyAcc_std_Z
    fBodyAccJerk_std_X
    fBodyAccJerk_std_Y
    fBodyAccJerk_std_Z
    fBodyGyro_std_X
    fBodyGyro_std_Y
    fBodyGyro_std_Z
    fBodyAccMag_std
    fBodyAccJerkMag_std
    fBodyGyroMag_std
    fBodyGyroJerkMag_std

