Getting and Cleaning Data Course Project
========================================
**Human Activity Recognition Using Smartphones Dataset Manipulation**

**Version 1.0**

**Warren Rosenau**

warrenrosenau@gmail.com



Introduction:
-------------

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

The objectives are as follows:

1. Merge the training and the test sets to create one data set.

2. Extract only the measurements on the mean and standard deviation for each measurement.

3. Use descriptive activity names to name the activities in the data set

4. Appropriately label the data set with descriptive variable names.

5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.


Data Source:
------------

Human Activity Recognition Using Smartphones Dataset

Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Universit? degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws

A full description is available at the site where the data was originally obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project was obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

About the Data
--------------

The original experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

**For each record the original data provided:**

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.

- Triaxial Angular velocity from the gyroscope. 

- A 561-feature vector with time and frequency domain variables. 

- Its activity label. 

- An identifier of the subject who carried out the experiment.

**This has been distilled to:**

For each test subject and each activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) each of the features that was a mean or standard deviation has been averaged accross all records for that subject and activity for a total of 180 rows with average values for 86 features

The descriptive paragraphs and text regarding the original data are taken from the source data readme.txt

Processing:
-----------

More detail is included in the comments in run_analysis.R however the following flow is followed:

- Download and unzip source data if needed.

- Load activity names.

- Load features list (column names for measured features).

- Adjust feature names to make more human readable and remove characters that are illegal as dataframe column names.
        - Illegal characters for column names
                - Remove empty paired brackets "()"
                - Change dashes "-" and commas "," to periods "."
                - Change remaining open brackets "(" to periods "."
                - Change remaining close brackets ")" to periods "."
        - Field cleanup
                - Change "BodyBody" to "Body" seems like a typo
                - Change "f" field prefix to "Frequency." for clarity
                - Change "t" field prefix to "Time." for clarity
                - Change "tBody" to "TimeBody" for clarity
                - Change "angle" at the beginning of a field name to "Angle" field should have been capitalized.
                - Change "mean" to "Mean" to fix capitalization
                - Change "gravityMean" to "GravityMean" to fix capitalization

- Load test and train versions of the subject, activity, and feature data assigning column names during the load process.

- Combine columns for subject, activity and feature for each of test and train sets

- Combine rows of the test and train data sets

- Convert activity from an index to a factor using a merge

- Select Activity, Subject, and all columns containing std and mean

        Note: Instructions were not clear regarding whether only the columns
        ending in Mean/std were of interest or whether to include MeanFreq 
        and the X/Y/Z specific mean/std features.  Erring on the side of over-inclusion,
        these additional columns have been included.

- Summarize the dataset by taking means of each measured value grouped by Activity and Subject

- Save summarized data to tidy.txt

This project includes the following files:
------------------------------------------
- 'README.md'

- 'CodeBook.md': List of all features.

- 'run_analysis.R': Main R script performing the tidy operations.

- 'tidy.txt': Tidy dataset containing the summary data from objective 5  
