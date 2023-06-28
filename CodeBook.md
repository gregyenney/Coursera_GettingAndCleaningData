---

# CodeBook.md 

## Course Project

## Course: Coursera - Getting And Cleaning Data

---


---
### Introduction
---

This code book describes the tidy data set based on the "Human Activity 
Recognition Using Smartphones Dataset Version 1.0".  The tidy data set was 
produced as the final project in the Getting and Cleaning Data course.

Included in the data set are:

* The original raw data.
    * getdata_projectfiles_UCI HAR Dataset.zip
    * Located at:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* A script which transforms the raw data into a new tidy data set.
    * "run_analysis.R"

* The tidy data set consisting of the following:
    * The initial tidy data set extracted from the raw data.
        * file:  tidy_data/tidy_data.csv
          
    * The secondary tidy data set which contains the mean of each measured value in the initial tidy data set grouped by subject and activity.
        * file:  tidy_data/tidy_means_data.csv

* A Code Book describing the tidy data sets and transformation process (this file).

* A readme file (README.md) describing the git repo.

---
### Study Design
---

The tidy data set provided here was built from the raw "UCI Human Activity Recognition Using Smartphones Dataset Version 1.0"

The file tidy_data.csv was created by:
* Pulling the mean and standard deviation variables from the both the training and test raw data files.
* Translating Activity variables into their human readable values.
* Integrating the subject and activity records with the smartphone measurements. 
* Combining the test and training data into a single data file.

The file tidy_means_data.csv was created from tidy_data.csv by:
* Grouping the data by subject and activity.
* Calculating the mean value of each raw data variable for each group.


---
### Code Book
---

For each record in the raw data, the tidy data set here pulls and renames the mean and standard deviation measures noted by "-mean()" and "-std()"

| Raw Data Variabl | Tidy Data Variabl | Mean of Tidy Data Values (Grouped by Subject and Activity | 
| tBodyAcc-mean()- | tbodyacc_mean_ | tbodyacc_mean_x_subject_activity_mea | 
| tBodyAcc-mean()- | tbodyacc_mean_ | tbodyacc_mean_y_subject_activity_mea | 
| tBodyAcc-mean()- | tbodyacc_mean_ | tbodyacc_mean_z_subject_activity_mea | 
| tBodyAcc-std()- | tbodyacc_std_ | tbodyacc_std_x_subject_activity_mea | 
| tBodyAcc-std()- | tbodyacc_std_ | tbodyacc_std_y_subject_activity_mea | 
| tBodyAcc-std()- | tbodyacc_std_ | tbodyacc_std_z_subject_activity_mea | 
| tGravityAcc-mean()- | tgravityacc_mean_ | tgravityacc_mean_x_subject_activity_mea | 
| tGravityAcc-mean()- | tgravityacc_mean_ | tgravityacc_mean_y_subject_activity_mea | 
| tGravityAcc-mean()- | tgravityacc_mean_ | tgravityacc_mean_z_subject_activity_mea | 
| tGravityAcc-std()- | tgravityacc_std_ | tgravityacc_std_x_subject_activity_mea | 
| tGravityAcc-std()- | tgravityacc_std_ | tgravityacc_std_y_subject_activity_mea | 
| tGravityAcc-std()- | tgravityacc_std_ | tgravityacc_std_z_subject_activity_mea | 
| tBodyAccJerk-mean()- | tbodyaccjerk_mean_ | tbodyaccjerk_mean_x_subject_activity_mea | 
| tBodyAccJerk-mean()- | tbodyaccjerk_mean_ | tbodyaccjerk_mean_y_subject_activity_mea | 
| tBodyAccJerk-mean()- | tbodyaccjerk_mean_ | tbodyaccjerk_mean_z_subject_activity_mea | 
| tBodyAccJerk-std()- | tbodyaccjerk_std_ | tbodyaccjerk_std_x_subject_activity_mea | 
| tBodyAccJerk-std()- | tbodyaccjerk_std_ | tbodyaccjerk_std_y_subject_activity_mea | 
| tBodyAccJerk-std()- | tbodyaccjerk_std_ | tbodyaccjerk_std_z_subject_activity_mea | 
| tBodyGyro-mean()- | tbodygyro_mean_ | tbodygyro_mean_x_subject_activity_mea | 
| tBodyGyro-mean()- | tbodygyro_mean_ | tbodygyro_mean_y_subject_activity_mea | 
| tBodyGyro-mean()- | tbodygyro_mean_ | tbodygyro_mean_z_subject_activity_mea | 
| tBodyGyro-std()- | tbodygyro_std_ | tbodygyro_std_x_subject_activity_mea | 
| tBodyGyro-std()- | tbodygyro_std_ | tbodygyro_std_y_subject_activity_mea | 
| tBodyGyro-std()- | tbodygyro_std_ | tbodygyro_std_z_subject_activity_mea | 
| tBodyGyroJerk-mean()- | tbodygyrojerk_mean_ | tbodygyrojerk_mean_x_subject_activity_mea | 
| tBodyGyroJerk-mean()- | tbodygyrojerk_mean_ | tbodygyrojerk_mean_y_subject_activity_mea | 
| tBodyGyroJerk-mean()- | tbodygyrojerk_mean_ | tbodygyrojerk_mean_z_subject_activity_mea | 
| tBodyGyroJerk-std()- | tbodygyrojerk_std_ | tbodygyrojerk_std_x_subject_activity_mea | 
| tBodyGyroJerk-std()- | tbodygyrojerk_std_ | tbodygyrojerk_std_y_subject_activity_mea | 
| tBodyGyroJerk-std()- | tbodygyrojerk_std_ | tbodygyrojerk_std_z_subject_activity_mea | 
| tBodyAccMag-mean( | tbodyaccmag_mea | tbodyaccmag_mean_subject_activity_mea | 
| tBodyAccMag-std( | tbodyaccmag_st | tbodyaccmag_std_subject_activity_mea | 
| tGravityAccMag-mean( | tgravityaccmag_mea | tgravityaccmag_mean_subject_activity_mea | 
| tGravityAccMag-std( | tgravityaccmag_st | tgravityaccmag_std_subject_activity_mea | 
| tBodyAccJerkMag-mean( | tbodyaccjerkmag_mea | tbodyaccjerkmag_mean_subject_activity_mea | 
| tBodyAccJerkMag-std( | tbodyaccjerkmag_st | tbodyaccjerkmag_std_subject_activity_mea | 
| tBodyGyroMag-mean( | tbodygyromag_mea | tbodygyromag_mean_subject_activity_mea | 
| tBodyGyroMag-std( | tbodygyromag_st | tbodygyromag_std_subject_activity_mea | 
| tBodyGyroJerkMag-mean( | tbodygyrojerkmag_mea | tbodygyrojerkmag_mean_subject_activity_mea | 
| tBodyGyroJerkMag-std( | tbodygyrojerkmag_st | tbodygyrojerkmag_std_subject_activity_mea | 
| fBodyAcc-mean()- | fbodyacc_mean_ | fbodyacc_mean_x_subject_activity_mea | 
| fBodyAcc-mean()- | fbodyacc_mean_ | fbodyacc_mean_y_subject_activity_mea | 
| fBodyAcc-mean()- | fbodyacc_mean_ | fbodyacc_mean_z_subject_activity_mea | 
| fBodyAcc-std()- | fbodyacc_std_ | fbodyacc_std_x_subject_activity_mea | 
| fBodyAcc-std()- | fbodyacc_std_ | fbodyacc_std_y_subject_activity_mea | 
| fBodyAcc-std()- | fbodyacc_std_ | fbodyacc_std_z_subject_activity_mea | 
| fBodyAccJerk-mean()- | fbodyaccjerk_mean_ | fbodyaccjerk_mean_x_subject_activity_mea | 
| fBodyAccJerk-mean()- | fbodyaccjerk_mean_ | fbodyaccjerk_mean_y_subject_activity_mea | 
| fBodyAccJerk-mean()- | fbodyaccjerk_mean_ | fbodyaccjerk_mean_z_subject_activity_mea | 
| fBodyAccJerk-std()- | fbodyaccjerk_std_ | fbodyaccjerk_std_x_subject_activity_mea | 
| fBodyAccJerk-std()- | fbodyaccjerk_std_ | fbodyaccjerk_std_y_subject_activity_mea | 
| fBodyAccJerk-std()- | fbodyaccjerk_std_ | fbodyaccjerk_std_z_subject_activity_mea | 
| fBodyGyro-mean()- | fbodygyro_mean_ | fbodygyro_mean_x_subject_activity_mea | 
| fBodyGyro-mean()- | fbodygyro_mean_ | fbodygyro_mean_y_subject_activity_mea | 
| fBodyGyro-mean()- | fbodygyro_mean_ | fbodygyro_mean_z_subject_activity_mea | 
| fBodyGyro-std()- | fbodygyro_std_ | fbodygyro_std_x_subject_activity_mea | 
| fBodyGyro-std()- | fbodygyro_std_ | fbodygyro_std_y_subject_activity_mea | 
| fBodyGyro-std()- | fbodygyro_std_ | fbodygyro_std_z_subject_activity_mea | 
| fBodyAccMag-mean( | fbodyaccmag_mea | fbodyaccmag_mean_subject_activity_mea | 
| fBodyAccMag-std( | fbodyaccmag_st | fbodyaccmag_std_subject_activity_mea | 
| fBodyBodyAccJerkMag-mean( | fbodybodyaccjerkmag_mea | fbodybodyaccjerkmag_mean_subject_activity_mea | 
| fBodyBodyAccJerkMag-std( | fbodybodyaccjerkmag_st | fbodybodyaccjerkmag_std_subject_activity_mea | 
| fBodyBodyGyroMag-mean( | fbodybodygyromag_mea | fbodybodygyromag_mean_subject_activity_mea | 
| fBodyBodyGyroMag-std( | fbodybodygyromag_st | fbodybodygyromag_std_subject_activity_mea | 
| fBodyBodyGyroJerkMag-mean( | fbodybodygyrojerkmag_mea | fbodybodygyrojerkmag_mean_subject_activity_mea | 
| fBodyBodyGyroJerkMag-std( | fbodybodygyrojerkmag_st | fbodybodygyrojerkmag_std_subject_activity_mea | 












---
Raw Data Set Description below this point.
---
The raw data is used pursuant to the following license:

```
    Use of this dataset in publications must be acknowledged by referencing the following publication [1]

    [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity
    Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International
    Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
```



---
Appendix
---
Instructions:

	1. The raw data
	2. A tidy dataset
	3. A code book describing each variable and it's values in the tidy data set
		a. Value Ranges, Units etc.
		b. Information about the summary choices that were made
		c. Variable names no dots, underscores, 
		d. Should be a section called, "Study Design" which describes how the data was collected
		e. Must be a section called "Code Book"
	4. .R script which transforms the raw data into the tidy data.
		a. No input parameters
Readme.md which provides clear instructions on the elements of the tidy data set and how to transform the raw data to the tidy data.
