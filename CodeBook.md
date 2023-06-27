---
Code Book 

Course Project

Coursera Course:  Getting and Cleaning Data
---

---
Introduction
---

This code book describes the tidy data set produced from the "Human Activity 
Recognition Using Smartphones Dataset Version 1.0".  

Included in the data set are:
 
	* The original raw data: 
		** getdata_projectfiles_UCI HAR Dataset.zip
		** source:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

	* a script which transforms the raw data into a tidy data.
		** "run_analysis.R"

	* The tidy data set consisting of the following:

		** The initial tidy data set extracted from the raw data.
			file:  tidy_data/tidy_data.csv 

		** The secondary data which contains the mean of each value 
		  grouped by subject and activity.
			file:  tidy_data/tidy_means_data.csv

	* a Code Book describing the tidy data set and transformation process 
          (this file).

	* a readme file (README.md) describing the git repo contents.


---
Code Book
---

---
Study Design
---

The tidy data set provided here can be recreated with the following steps.

	1.  Clone this repo into your local workspace.

		git clone https://github.com/gregyenney/Coursera_GettingAndCleaningData.git

	2.  Naviigate into your local workspace directory and download the raw data from: 

		https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

	3.  Extract the raw data into your local workspace directory.

		unzip getdata_projectfiles_UCI HAR Dataset.zip

	4.  Create the tidy data set by Executing the R program run_analysis.R 





---
---
Raw Data Set Description below this point.

---
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

###############################################################################

================================================================================
Raw Data Set Description below this point.
================================================================================


==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
