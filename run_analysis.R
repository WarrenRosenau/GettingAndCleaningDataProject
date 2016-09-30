library(dplyr)

# download source data if needed and unzip to working directory if needed
projectDatasetUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
projectDatasetFile <- "./getdata_projectfiles_UCI_HAR_Dataset.zip"

# If needed, download the zip file of the dataset 
if (!file.exists(projectDatasetFile)) {
        download.file(projectDatasetUrl,projectDatasetFile, method = "curl")
}

# if the data folder does not exist, create and fill it by unzipping the zip file
if (!dir.exists("UCI HAR Dataset")) {
        unzip(projectDatasetFile)
}

#--------------------------------------------------------------------------------------------------
# Read shared data
#
# Read activity labels
# UCI HAR Dataset/activity_labels.txt
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", 
                              col.names = c("ActivityIndex", "Activity"));

# Read feature list
# UCI HAR Dataset/features.txt 
# labels for 561 features
features <- read.table("UCI HAR Dataset/features.txt", 
                       col.names = c("FeatureIndex","FeatureName"))
#,                       stringsAsFactors = FALSE)

#remove characters that are illegal in column names
features$ColumnNames <- features$FeatureName
features$ColumnNames <- gsub("\\(\\)", "",features$ColumnNames)
features$ColumnNames <- gsub(",|-", ".",features$ColumnNames)
features$ColumnNames <- gsub("\\(", ".",features$ColumnNames)
features$ColumnNames <- gsub("\\)", "",features$ColumnNames)
features$ColumnNames <- gsub('BodyBody', 'Body', features$ColumnNames)
features$ColumnNames <- gsub('^f', 'Frequency.', features$ColumnNames)
features$ColumnNames <- gsub('^t', 'Time.', features$ColumnNames)
features$ColumnNames <- gsub('tBody', 'TimeBody', features$ColumnNames)
features$ColumnNames <- gsub('^angle', 'Angle', features$ColumnNames)
features$ColumnNames <- gsub('mean', 'Mean', features$ColumnNames)
features$ColumnNames <- gsub('gravityMean', 'GravityMean', features$ColumnNames)

# Read train data:---------------------------------------------------

# train subjects
# 7352 train instances
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                            col.names = "Subject", header = FALSE)

# Activity indexes
# 7352 train instances 
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", 
                      col.names = "ActivityIndex", header = FALSE)

# Feature data
# 7352 train instances of 561 attributes
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt",
                      header = FALSE, col.names = features$ColumnNames)

# Raw data not required but reviewed for clarity
# 7352 train instances of 128 readings/window  (RAW data)
#body_acc_y_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")


# Read test data:---------------------------------------------------

# test subjects
# 2947 test instances
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                           col.names = "Subject", header = FALSE)

# Activity indexes
# 2947 test instances 
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", 
                     col.names = "ActivityIndex", header = FALSE)

# Feature data
# 2947 test instances of 561 attributes
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt",
                     header = FALSE, col.names = features$ColumnNames)

# Raw data not required but reviewed for clarity
# 2947 test instances of 128 readings/window  (RAW data)
#body_acc_y_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")

# Build single datasets for test and train
# set field added for traceability
trainData <- cbind(subject_train,y_train,X_train)
trainData$Set <- factor("train",levels = c("test","train"))

testData <- cbind(subject_test,y_test,X_test)
testData$Set <- factor("test",levels = c("test","train"))

# Merge the test and tran data sets
mergedData <- rbind(trainData,testData)
##################### objective 1 complete ################################

# change activity into a factor
tidyData <- merge(mergedData,activity_labels)
##################### objective 3 complete #################################

# include all columns containing std or mean, some debate about including less
# erring on the side of including more.
regexPattern <- "(std|Mean)"   

obj4Data <- select(tidyData, 
                       Subject, 
                       Activity, 
                       Set, 
                       matches(regexPattern))
##################### objective 2 complete #################################
##################### objective 4 complete #################################

# create summary data set calculating means grouped by Subject and Activity
obj5Data <- obj4Data %>%
        group_by(Activity,Subject) %>%
        summarize_each(funs(mean),-Set) %>%
        arrange(Subject,Activity)

##################### objective 5 complete #################################

# export file of the summary data set for submission
outputFileName <- "./tidy.txt"
write.table(obj5Data,outputFileName,row.names = FALSE)