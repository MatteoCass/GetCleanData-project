# GetCleanData-project
Repository for the Course "Getting and Cleaning Data"

This README file describes the operations that were carried out to obtain the tidy datset from the raw data downloaded by using the run_analysis.R code.

The unzipped file contains two subfolders named "train" and "test" which contain:
* data for training and test set: "X_train" and "X_test"
* activity that the subject was doing when the data were measured: "y_train" and "y_test"
* id of the subject: "subject_train" and "subject_test"
* subfolders with raw data: "Inertial Signals"

The main folder contains:
* a file that explains which activity corresponds to the numeric id used in "y_train" and "y_test": "activity_labels"
* a file that contains the labels of the variables measured in "X_train" and "X_test": "features"
* a file that describes what the measured variables are: "features_info"
* a file that contains information on the files: "README"

The steps carried out in "run_analysis.R" are the following:
1. set the working directory to the subfolder of the training set and read the data ("X_train"), the activity ("y_train") and the subject id ("subject_train") into R
2. set the working directory to the subfolder of the test set and import the corresponding files for the test set ("X_test","y_test" and "subject_test")
3. set the working directory to the main folder and import the variable labels ("features"). The first column is an integer indicating the column index and the second column is a character vector containing the labels.
4. 
 


