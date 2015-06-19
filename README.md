# GetCleanData-project
## Repository for the Course "Getting and Cleaning Data"

This README file describes the operations that were carried out to obtain the tidy dataset from the downloaded raw data by using the "run_analysis.R" code.

## Source files

The unzipped file contains two subfolders named "train" and "test" which contain:
* data for training and test set: "X_train" and "X_test"
* activity that the subject was doing when the data were measured: "y_train" and "y_test"
* id of the subject: "subject_train" and "subject_test"
* subfolders with raw data: "Inertial Signals"

The main folder contains:
* a file that explains which activity corresponds to the numeric id used in "y_train" and "y_test": "activity_labels"
* a file that contains the labels of the measured variables (i.e. the columns of "X_train" and "X_test"): "features"
* a file that describes what the measured variables are: "features_info"
* a file that contains information on the files: "README"

## Steps of the analysis
The steps carried out in "run_analysis.R" are the following:

1. set the working directory to the subfolder of the training set and read the data ("X_train"), the activity ("y_train") and the subject id ("subject_train") into R.
2. set the working directory to the subfolder of the test set and import the corresponding files for the test set ("X_test","y_test" and "subject_test").
3. set the working directory to the main folder and import the variable labels ("features"). The first column is an integer indicating the column index and the second column is a character vector containing the labels.
4. the data for training and test set are merged together in the variable "X_all": the data of the training set come first (rows 1-7352) and the data of the test set afterwards (rows 7353-10299).
5. The same operation is done on the activity variables, which are merged into the variable "y_all", and on the subject id (merged into the variable "subject_all").
6. The variables that are mean or standard deviation are indentified using the *grep* function on the variable labels contained in "features". The output is an integer vector ("v_to_retain") which tells which columns of "X_all" are mean or standard deviations. In total, there are 86 variables that contain either the string *mean* or the string *std*.
7. This vector is used to subset the data in "X_all" to produce a reduced dataset named "X" which contains only the variables of interest. The column names are renamed using the labels in "features".
8. The activity vector "y_all" is transformed into a factor (needed later) and the levels are named according to the code in the file "activity_labels", i.e. 1 = WALKING, 2 = WALKING_UPSTAIRS, etc.
9. Also the id of the subject (variable "subject_all") is converted to a factor (needed later)
10. Two new columns are added to the data matrix "X": one column contains the id of the subject and the second column contains the activity.
11. The dataset is transformed into a long and skinny dataset where each row contains one measurement of one variable for a subject performing a particular activity. This is done with the *melt* function using *subject* and *activity* as id varibles and all the other 86 columns as measured variables. 
 


