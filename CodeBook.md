---

# Code Book 

## Course Project

## Coursera Course -- Getting and Cleaning Data

---


---
### Introduction
---

This code book describes the tidy data set based on the "Human Activity 
Recognition Using Smartphones Dataset Version 1.0".  This data set was 
produced as the final project in the Getting and Recording data course.

Included in the data set are:

* The original raw data.
    * getdata_projectfiles_UCI HAR Dataset.zip
    * Located at:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* A script which transforms the raw data into a tidy data.
    * "run_analysis.R"

* The tidy data set consisting of the following:
    * The initial tidy data set extracted from the raw data.
        * file:  tidy_data/tidy_data.csv 
    * The secondary data which contains the mean of each value grouped by subject and activity.
        * file:  tidy_data/tidy_means_data.csv

* A Code Book describing the tidy data set and transformation process (this file).

* A readme file (README.md) describing the git repo.

---
Study Design
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
Code Book
---

---
Instructions (MOVE TO README.md)
---

The tidy data set provided here can be recreated with the following steps.

1.  Clone this repo into your local workspace.

     ```git clone https://github.com/gregyenney/Coursera_GettingAndCleaningData.git```

1.  Download the source raw data and place it in your repo local workspace directory.

     ```https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip```

1.  Navigate into the local workspace directory. 

    ```cd Coursera _GettingAndCleaningData```

1.  Extract the raw data in your local workspace directory.

     ```unzip getdata_projectfiles_UCI HAR Dataset.zip```

1.  Create the tidy data set by Executing the R program run_analysis.R

    ```Rscript run_analysis.R```



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
