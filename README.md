README.md

---
## Course: Coursera - Getting And Cleaning Data

## Final Project
---


This repositority contains a new tidy data set based on the UCI Human Activities Recognition data set.  See below for instructions on producing the tidy dataset and see the Code Book (<https://github.com/gregyenney/Coursera_GettingAndCleaningData/edit/main/CodeBook.md>) for more details on the data.

---

### Repo Contents

---

Included in the data set are:

* The original raw data.
    * getdata_projectfiles_UCI HAR Dataset.zip
    * Located at:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* A script which transforms the raw data into a new tidy data set.
    * "run_analysis.R"

* The tidy data set consisting of the following:
    * The initial tidy data set extracted from the raw data: ```tidy_data/tidy_data.csv```
          
    * A secondary tidy data set summarizing the initial data:  ```tidy_data/tidy_means_data.csv```

* A Code Book describing the tidy data sets and transformation process (```CodeBook.md```).

* A readme file (this file) describing the git repo.


---

### Instructions 

---

The tidy data set provided in this repo can be recreated with the following steps.

1.  Clone this repo into your local workspace.

     ```git clone https://github.com/gregyenney/Coursera_GettingAndCleaningData.git```

1.  Download the source raw data and place it in your repo local workspace directory.

     ```https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip```

1.  Navigate into the local workspace directory. 

    ```cd Coursera_GettingAndCleaningData```

1.  Extract the raw data in your local workspace directory.

     ```unzip getdata_projectfiles_UCI HAR Dataset.zip```

1.  Create the tidy data set by Executing the R program run_analysis.R

    ```Rscript run_analysis.R```




    
