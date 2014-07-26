
# Variables storing the paths of the files we're interested in
train_data_path <- "UCI HAR Dataset/train/X_train.txt";
test_data_path <- "UCI HAR Dataset/test/X_test.txt";
train_labels_path <- "UCI HAR Dataset/train/y_train.txt";
test_labels_path <- "UCI HAR Dataset/test/y_test.txt";
features_path <- "UCI HAR Dataset/features.txt";
labels_path <- "UCI HAR Dataset/activity_labels.txt";

# Get the features list get number of features to help us reshape training and
# testing data later.
features <- read.csv(features_path, sep=" ", as.is=TRUE, header=FALSE)[,2];
numFeatures = length(features);

# Get activity labels
labels <- read.csv(labels_path, sep=" ", as.is=TRUE, header=FALSE);

# Read training set
train_labels <- read.csv(train_labels_path, sep=" ", header=FALSE);
train_labels <- factor(train_labels[[1]], labels=labels[[2]]);
numRows <- length(train_labels);
train_data <- read.fwf(train_data_path, rep(16, numFeatures), header=FALSE,
                       buffersize=200);

# Read testing set
# Note: read.fwf consumes a lot of memory using the default buffer size.
#       Decreasing it solves this problem, but slows down performance.
#       Change at your own risk!
test_labels <- read.csv(test_labels_path, sep=" ", header=FALSE);
test_labels <- factor(test_labels[[1]], labels=labels[[2]]);
numRows <- length(test_labels);
test_data <- read.fwf(test_data_path, rep(16, length(features)), header=FALSE,
                      buffersize=200);

# Merge training and testing data
full_data <- rbind(train_data, test_data);

# Add activity labels to data frame
act_labels <- c(train_labels, test_labels);
act_labels <- factor(act_labels, labels=labels[[2]]);
full_data <- cbind(full_data, act_labels);

# Add column names to merged data frame
colnames(full_data) <- c(features, "activityLabel");

# Extract the columns that are standard deviations or means (plus the labels)
# to get tidy data.
filter <- grepl("mean()", colnames(full_data)) | 
          grepl("std()", colnames(full_data)) |
          grepl("activityLabel", colnames(full_data));
tidy_data <- full_data[,filter];

# Write tidy data to csv file
write.csv(tidy_data, "tidy_data.csv", row.names=FALSE, quote=FALSE);
