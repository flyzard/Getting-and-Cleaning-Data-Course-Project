# Experiment run in a group of 30 volunteers with ages between 19-48
# there are 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

# Load dplyr 
library(dplyr)

# Define URL and name of the file
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName = "UCI HAR Dataset.zip"

# Download the file
if (!file.exists(fileName)) {
  download.file(fileUrl, fileName, mode = "wb")
}

# Unzip the file to data directory
unzipedFolder = "UCI HAR Dataset"
dataPath = "./data"

extractedDataPath = paste(dataPath, unzipedFolder, sep = "/")
if (!file.exists(extractedDataPath)) {
  unzip(fileName, exdir = dataPath)
}

#################################################################################
# Step 0 - Data preparation
#################################################################################
# Read the training Data
subject_train = read.table(file.path(extractedDataPath, "train", "subject_train.txt"))
training_set = read.table(file.path(extractedDataPath, "train", "X_train.txt"))
training_activity = read.table(file.path(extractedDataPath, "train", "Y_train.txt"))

# Read test data
subject_test = read.table(file.path(extractedDataPath, "test", "subject_test.txt"))
testing_set = read.table(file.path(extractedDataPath, "test", "X_test.txt"))
testing_activity = read.table(file.path(extractedDataPath, "test", "Y_test.txt"))

# Read features and labels
features = read.table(file.path(extractedDataPath, "features.txt"), as.is = TRUE)
activity_labels = read.table(file.path(extractedDataPath, "activity_labels.txt"))
colnames(activity_labels) <- c("activityId", "activityLabel")

#################################################################################
# Step 1 - Merges the training and the test sets to create one data set.
#################################################################################
# Bind all collumns of tables ...test and ...training, then bind all rows of all both resulted tables
all_activity = rbind(
  cbind(subject_train, training_set, training_activity),
  cbind(subject_test, testing_set, testing_activity)
)

# remove original tables to save memory
rm(subject_train, training_set, training_activity, 
   subject_test, testing_set, testing_activity)

# assign column names
colnames(all_activity) = c("subject", features[, 2], "activity")

##############################################################################
# Step 2 - Extracts only the measurements on the mean and standard deviation 
# for each measurement.
##############################################################################
# Remove unecessary columns, the ones not containing subject, activity, mean or standard deviation
all_activity = all_activity[, grepl("subject|activity|mean|std", colnames(all_activity))]

##############################################################################
# Step 3 - Uses descriptive activity names to name the activities in 
# the data set
##############################################################################
# replace activity values with named factor levels
all_activity$activity = factor(all_activity$activity, levels = activity_labels[, 1], labels = activity_labels[, 2])

##############################################################################
# Step 4 - Appropriately label the data set with descriptive variable names
##############################################################################
# get column names
column_names = colnames(all_activity) %>% # Get column names
  gsub("[\\(\\)-]", "", .) %>% # Remove special characters from column names
  gsub("^(fBody)", "frequencyBody", .) %>% # Replace fBody in the beginning of a word for frequencyBody
  gsub("BodyBody", "Body", .) %>% # Replace some occurrences with Body repeated
  gsub("^t", "time", .) %>% # Replace column names beginning with t by time...
  gsub("Acc", "Accelerometer", .) %>% # Replace Acc by Acelerometer
  gsub("Gyro", "Gyroscope", .) %>% # Replace Gyro by Gyroscope
  gsub("Mag", "Magnitude", .) %>% # Replace Mag by Magnitude
  gsub("Freq", "Frequency", .) %>% # Replce Freq By Frequency
  gsub("mean", "Mean", .) %>% # Replace mean by Mean
  gsub("std", "StandardDeviation", .) # Replace std by StandardDeviation

colnames(all_activity) = column_names

#################################################################################
# Step 5 - From the data set in step 4, creates a second, independent tidy data 
# set with the average of each variable for each activity and each subject.
#################################################################################
all_activity_means = all_activity %>%
  group_by(subject, activity) %>%
  summarise_all(mean)

# Write file with tidy data to allActivitiesMean.txt
write.table(all_activity_means, "tidyActivitiesMean.txt", row.names = FALSE, quote = FALSE)