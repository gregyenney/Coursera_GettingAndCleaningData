CodeBook.md

---
## Course: Coursera - Getting And Cleaning Data

## Final Project
---


---
## Introduction
---

This code book describes the tidy data sets extracted from and based on the "Human Activity 
Recognition Using Smartphones Dataset Version 1.0".  The tidy data was 
produced as the final project for the Getting and Cleaning Data course.

Included in the data set are:

* A script which transforms the raw data into a new tidy data set.
    * "run_analysis.R"

* The tidy data set consisting of the following (will be overwritten by run_analysis.R):
    * The initial tidy data set extracted from the raw data: ```tidy_data/tidy_data.csv```
          
    * A secondary tidy data set summarizing the initial data:  ```tidy_data/tidy_means_data.csv```

* A Code Book describing the tidy data sets and transformation process (this file).

* A readme file (README.md) describing the git repo.


---

## Raw Data Source

---

* The original raw data.
    * getdata_projectfiles_UCI HAR Dataset.zip
    * Located at:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


---
## Study Design
---

The tidy data set provided here was built from the raw "UCI Human Activity Recognition Using Smartphones Dataset Version 1.0"

The file ```tidy_data.csv``` was created by:
* Pulling the mean and standard deviation variables (-mean(), -std()) from the both the training and test raw data files.
* Including the human readable activity values for each observation.
* Integrating the subject and activity records with each observation in the smartphone measurements. 
* Combining the test and training data into a single data file.

The file ```tidy_means_data.csv``` was created from tidy_data.csv by:
* Grouping the data by subject and activity.
* Calculating the mean value of each raw data variable for each group.



---
## Code Book
---

### The raw data consist of:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment.

    #### Note:  
    * Features are normalized and bounded within [-1,1].
    * Each feature vector is a row on the text file.
      
*Please see the raw data in* ```getdata_projectfiles_UCI HAR Dataset.zip``` *for more detail.*

### The tidy_data:
For each record in the raw data, the tidy data set selects and renames the mean and standard deviation measures noted by "-mean()" and "-std()"
and integrates the corresponding subject and human readable activity names.  In addition, the data is further summarized into a second data set to 
provide the mean value of each measure as grouped by subject and activity.

The selected raw data variables with the corresponding tidy data variable and the summarized mean value variable names are provided in the table below:

Raw Data Variable | Tidy Data Variable | Mean of Tidy Data Values (Grouped by Subject and Activity)
---|---|---
tBodyAcc-mean()-X | tbodyacc_mean_x | tbodyacc_mean_x_subject_activity_mean
tBodyAcc-mean()-Y | tbodyacc_mean_y | tbodyacc_mean_y_subject_activity_mean
tBodyAcc-mean()-Z | tbodyacc_mean_z | tbodyacc_mean_z_subject_activity_mean
tBodyAcc-std()-X | tbodyacc_std_x | tbodyacc_std_x_subject_activity_mean
tBodyAcc-std()-Y | tbodyacc_std_y | tbodyacc_std_y_subject_activity_mean
tBodyAcc-std()-Z | tbodyacc_std_z | tbodyacc_std_z_subject_activity_mean
tGravityAcc-mean()-X | tgravityacc_mean_x | tgravityacc_mean_x_subject_activity_mean
tGravityAcc-mean()-Y | tgravityacc_mean_y | tgravityacc_mean_y_subject_activity_mean
tGravityAcc-mean()-Z | tgravityacc_mean_z | tgravityacc_mean_z_subject_activity_mean
tGravityAcc-std()-X | tgravityacc_std_x | tgravityacc_std_x_subject_activity_mean
tGravityAcc-std()-Y | tgravityacc_std_y | tgravityacc_std_y_subject_activity_mean
tGravityAcc-std()-Z | tgravityacc_std_z | tgravityacc_std_z_subject_activity_mean
tBodyAccJerk-mean()-X | tbodyaccjerk_mean_x | tbodyaccjerk_mean_x_subject_activity_mean
tBodyAccJerk-mean()-Y | tbodyaccjerk_mean_y | tbodyaccjerk_mean_y_subject_activity_mean
tBodyAccJerk-mean()-Z | tbodyaccjerk_mean_z | tbodyaccjerk_mean_z_subject_activity_mean
tBodyAccJerk-std()-X | tbodyaccjerk_std_x | tbodyaccjerk_std_x_subject_activity_mean
tBodyAccJerk-std()-Y | tbodyaccjerk_std_y | tbodyaccjerk_std_y_subject_activity_mean
tBodyAccJerk-std()-Z | tbodyaccjerk_std_z | tbodyaccjerk_std_z_subject_activity_mean
tBodyGyro-mean()-X | tbodygyro_mean_x | tbodygyro_mean_x_subject_activity_mean
tBodyGyro-mean()-Y | tbodygyro_mean_y | tbodygyro_mean_y_subject_activity_mean
tBodyGyro-mean()-Z | tbodygyro_mean_z | tbodygyro_mean_z_subject_activity_mean
tBodyGyro-std()-X | tbodygyro_std_x | tbodygyro_std_x_subject_activity_mean
tBodyGyro-std()-Y | tbodygyro_std_y | tbodygyro_std_y_subject_activity_mean
tBodyGyro-std()-Z | tbodygyro_std_z | tbodygyro_std_z_subject_activity_mean
tBodyGyroJerk-mean()-X | tbodygyrojerk_mean_x | tbodygyrojerk_mean_x_subject_activity_mean
tBodyGyroJerk-mean()-Y | tbodygyrojerk_mean_y | tbodygyrojerk_mean_y_subject_activity_mean
tBodyGyroJerk-mean()-Z | tbodygyrojerk_mean_z | tbodygyrojerk_mean_z_subject_activity_mean
tBodyGyroJerk-std()-X | tbodygyrojerk_std_x | tbodygyrojerk_std_x_subject_activity_mean
tBodyGyroJerk-std()-Y | tbodygyrojerk_std_y | tbodygyrojerk_std_y_subject_activity_mean
tBodyGyroJerk-std()-Z | tbodygyrojerk_std_z | tbodygyrojerk_std_z_subject_activity_mean
tBodyAccMag-mean() | tbodyaccmag_mean | tbodyaccmag_mean_subject_activity_mean
tBodyAccMag-std() | tbodyaccmag_std | tbodyaccmag_std_subject_activity_mean
tGravityAccMag-mean() | tgravityaccmag_mean | tgravityaccmag_mean_subject_activity_mean
tGravityAccMag-std() | tgravityaccmag_std | tgravityaccmag_std_subject_activity_mean
tBodyAccJerkMag-mean() | tbodyaccjerkmag_mean | tbodyaccjerkmag_mean_subject_activity_mean
tBodyAccJerkMag-std() | tbodyaccjerkmag_std | tbodyaccjerkmag_std_subject_activity_mean
tBodyGyroMag-mean() | tbodygyromag_mean | tbodygyromag_mean_subject_activity_mean
tBodyGyroMag-std() | tbodygyromag_std | tbodygyromag_std_subject_activity_mean
tBodyGyroJerkMag-mean() | tbodygyrojerkmag_mean | tbodygyrojerkmag_mean_subject_activity_mean
tBodyGyroJerkMag-std() | tbodygyrojerkmag_std | tbodygyrojerkmag_std_subject_activity_mean
fBodyAcc-mean()-X | fbodyacc_mean_x | fbodyacc_mean_x_subject_activity_mean
fBodyAcc-mean()-Y | fbodyacc_mean_y | fbodyacc_mean_y_subject_activity_mean
fBodyAcc-mean()-Z | fbodyacc_mean_z | fbodyacc_mean_z_subject_activity_mean
fBodyAcc-std()-X | fbodyacc_std_x | fbodyacc_std_x_subject_activity_mean
fBodyAcc-std()-Y | fbodyacc_std_y | fbodyacc_std_y_subject_activity_mean
fBodyAcc-std()-Z | fbodyacc_std_z | fbodyacc_std_z_subject_activity_mean
fBodyAccJerk-mean()-X | fbodyaccjerk_mean_x | fbodyaccjerk_mean_x_subject_activity_mean
fBodyAccJerk-mean()-Y | fbodyaccjerk_mean_y | fbodyaccjerk_mean_y_subject_activity_mean
fBodyAccJerk-mean()-Z | fbodyaccjerk_mean_z | fbodyaccjerk_mean_z_subject_activity_mean
fBodyAccJerk-std()-X | fbodyaccjerk_std_x | fbodyaccjerk_std_x_subject_activity_mean
fBodyAccJerk-std()-Y | fbodyaccjerk_std_y | fbodyaccjerk_std_y_subject_activity_mean
fBodyAccJerk-std()-Z | fbodyaccjerk_std_z | fbodyaccjerk_std_z_subject_activity_mean
fBodyGyro-mean()-X | fbodygyro_mean_x | fbodygyro_mean_x_subject_activity_mean
fBodyGyro-mean()-Y | fbodygyro_mean_y | fbodygyro_mean_y_subject_activity_mean
fBodyGyro-mean()-Z | fbodygyro_mean_z | fbodygyro_mean_z_subject_activity_mean
fBodyGyro-std()-X | fbodygyro_std_x | fbodygyro_std_x_subject_activity_mean
fBodyGyro-std()-Y | fbodygyro_std_y | fbodygyro_std_y_subject_activity_mean
fBodyGyro-std()-Z | fbodygyro_std_z | fbodygyro_std_z_subject_activity_mean
fBodyAccMag-mean() | fbodyaccmag_mean | fbodyaccmag_mean_subject_activity_mean
fBodyAccMag-std() | fbodyaccmag_std | fbodyaccmag_std_subject_activity_mean
fBodyBodyAccJerkMag-mean() | fbodybodyaccjerkmag_mean | fbodybodyaccjerkmag_mean_subject_activity_mean
fBodyBodyAccJerkMag-std() | fbodybodyaccjerkmag_std | fbodybodyaccjerkmag_std_subject_activity_mean
fBodyBodyGyroMag-mean() | fbodybodygyromag_mean | fbodybodygyromag_mean_subject_activity_mean
fBodyBodyGyroMag-std() | fbodybodygyromag_std | fbodybodygyromag_std_subject_activity_mean
fBodyBodyGyroJerkMag-mean() | fbodybodygyrojerkmag_mean | fbodybodygyrojerkmag_mean_subject_activity_mean
fBodyBodyGyroJerkMag-std() | fbodybodygyrojerkmag_std | fbodybodygyrojerkmag_std_subject_activity_mean


---
Raw Data License
---
The raw data is used pursuant to the following license:

```
    Use of this dataset in publications must be acknowledged by referencing the following publication [1]

    [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity
    Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International
    Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
```

