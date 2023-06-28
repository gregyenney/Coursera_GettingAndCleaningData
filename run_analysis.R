library(dplyr)

###############################################################################
# Data Files
###############################################################################

raw_data_url         <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
raw_data_zip_file    <- "./getdata_projectfiles_UCI HAR Dataset.zip"
raw_data_dir         <- "./UCI\ HAR\ Dataset/"
activity_labels_file <- "./UCI\ HAR\ Dataset/activity_labels.txt"
feature_labels_file  <- "./UCI\ HAR\ Dataset/features.txt"
train_measures_file  <- "./UCI\ HAR\ Dataset/train/X_train.txt"
train_subject_file   <- "./UCI\ HAR\ Dataset/train/subject_train.txt"
train_activity_file  <- "./UCI\ HAR\ Dataset/train/y_train.txt"
test_measures_file   <- "./UCI\ HAR\ Dataset/test/X_test.txt"
test_subject_file    <- "./UCI\ HAR\ Dataset/test/subject_test.txt"
test_activity_file   <- "./UCI\ HAR\ Dataset/test/y_test.txt"
tidy_data_dir        <- "./tidy_data"
tidy_data_file       <- "./tidy_data/tidy_data.csv"
validation_data_file <- "./tidy_data/validation_data.csv"
tidy_means_data_file <- "./tidy_data/tidy_means_data.csv"

###############################################################################
# Function Definitions
###############################################################################

get_measures_df <- function(measures_file) {

  feature_labels_df <- read.table(feature_labels_file, 
                                  header=FALSE, 
                                  sep="", 
                                  col.names=c("feature_index", "feature"))
  
  feature_labels <- feature_labels_df$feature
  
  df <- read.table(measures_file, 
                   header=FALSE, 
                   sep="", 
                   dec=".", 
                   numerals="no.loss", 
                   col.names=feature_labels
                   )
  
  df
}

get_mean_std_df <- function(feature_labels_file, activity_labels_file, 
                            measures_file, subject_file, activity_file ) {

  feature_labels <- get_feature_labels(feature_labels_file)
  
  df <- read.table(measures_file, 
                   header=FALSE, 
                   sep="", 
                   dec=".", 
                   numerals="no.loss", 
                   col.names=feature_labels)
    
  mean_std_df <- df[,grep("(_mean|_std|_mean_[x,y,z]|_std_[x,y,z])$", 
                          feature_labels)]
 
  activity_labeled_df <- get_labeled_activity_df(activity_file, activity_labels_file)
  
  # Add the activity column
  mean_std_df <- cbind(activity_labeled_df$activity_name, mean_std_df)

  # Add the subject column
  subject_df <- read.table(subject_file, 
                           header=FALSE, sep="", 
                           col.names="subject_id", 
                           colClasses="integer")
  
  mean_std_df <- cbind(subject_df$subject_id, 
                       mean_std_df)
  
  # rename the subject_id and activity_name columns
  mean_std_df <- rename(mean_std_df, 
                        "subject_id" = "subject_df$subject_id",
                        "activity_name" = "activity_labeled_df$activity_name")
   
  mean_std_df
}

get_labeled_activity_df <- function(activity_file, activity_labels_file) {
  
  # modify the activity df to include activity name 
  activity_df <- read.table(activity_file, 
                            header=FALSE,
                            col.names="activity_id", 
                            colClasses="integer")

  activity_labels_df <- read.table(activity_labels_file, 
                                   header=FALSE, 
                                   sep="", 
                                   col.names=c("activity_id", "activity_name"),
                                   stringsAsFactors=TRUE,
                                   colClasses = c("integer", "factor"))
  
  activity_labeled_df <- left_join(activity_df,
                                   activity_labels_df,
                                   )
  
  activity_labeled_df  
}

get_feature_labels <- function(feature_labels_file) {
  
  feature_labels_df <- read.table(feature_labels_file, 
                                  header=FALSE, 
                                  sep="", 
                                  col.names=c("feature_index", "feature"))
  
  feature_labels <- feature_labels_df$feature
  
  feature_labels <- gsub("-mean\\(\\)", "-mean", feature_labels)
  feature_labels <- gsub("-std\\(\\)", "-std", feature_labels)
  feature_labels <- gsub("\\(\\)","",feature_labels)
  feature_labels <- gsub("\\(","_of_",feature_labels)
  feature_labels <- gsub("\\)","",feature_labels)
  feature_labels <- gsub("([0-9]+)\\,([0-9]+)","\\1to\\2", feature_labels)
  feature_labels <- gsub(",","_and_",feature_labels)
  feature_labels <- gsub("-", "_", feature_labels)
  feature_labels <- tolower(feature_labels)
    
  feature_labels
}

get_tidy_df <- function() {

    test_mean_std_df <- get_mean_std_df(feature_labels_file, 
                                      activity_labels_file, 
                                      test_measures_file, 
                                      test_subject_file, 
                                      test_activity_file)
  
  train_mean_std_df <- get_mean_std_df(feature_labels_file, 
                                       activity_labels_file, 
                                       train_measures_file, 
                                       train_subject_file, 
                                       train_activity_file)
  
  combo_mean_std_df <- rbind(test_mean_std_df, train_mean_std_df)
  
  write.csv(combo_mean_std_df, file=tidy_data_file, row.names=FALSE)
  
  combo_mean_std_df
}

get_validation_df <- function() {
  test_df <- get_measures_df(test_measures_file)
  train_df <- get_measures_df(train_measures_file)
  
  combo_df <- rbind(test_df, train_df)
  
  combo_df
}

get_tidy_means_df <- function(tidy_df) {

  # need to rename all the columns to <current_name>_subject_activity_mean

  tidy_means <- lapply(split(tidy_df, ~ subject_id + activity_name), 
                       function(x) { colMeans(x[,3:68]) } )
  tidy_means_df <- bind_rows(tidy_means)
  first_elements <- lapply(strsplit(names(tidy_means),"\\."), 
                           function(x) { as.integer(x[1]) })
  second_elements <- lapply(strsplit(names(tidy_means),"\\."), 
                            function(x) { x[2] })
  tidy_means_df <- data.frame(subject_id=c(unlist(first_elements)), 
                              activity_name=c(unlist(second_elements)), 
                              tidy_means_df, 
                              stringsAsFactors=TRUE)
  tidy_means_df <- rename_with(tidy_means_df, ~ paste0(.x, "_subject_activity_mean"), 3:68)

  tidy_means_df
}


###############################################################################
# Download and Extract the Raw Data for Analysis
###############################################################################

download.file(raw_data_url, destfile=raw_data_zip_file, method="curl")
unzip(raw_data_zip_file)

###############################################################################
# Create The Tidy Data Set
###############################################################################


if (! file.exists(tidy_data_dir)) { dir.create(tidy_data_dir)}

tidy_df <- get_tidy_df()
write.table(tidy_df, file=tidy_data_file, sep=",", row.names=FALSE)

#v_df <- get_validation_df()
#write.table(v_df, file=validation_data_file, sep=",", row.names=FALSE)

tidy_means_df <- get_tidy_means_df(tidy_df)
write.table(tidy_means_df, file=tidy_means_data_file, sep=",", row.names=FALSE)

