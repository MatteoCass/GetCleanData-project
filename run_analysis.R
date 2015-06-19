run_analysis <- function(){
  library(dplyr)
  library(reshape2)
  
# go to folder of training set and import X_train (data), y_train (activity) and subject_train (labels)
setwd("C:/Users/Matteo/Documents/Courses//03 - Getting and Cleaning Data/R Data & Code/Course project/UCI HAR Dataset/train")
x_train<-read.table("X_train.txt")
y_train<-read.table("y_train.txt",colClasses="integer")
subject_train<-read.table("subject_train.txt")

# go to folder of test set and import X_test (data), y_test (activity) and subject_test (labels)
setwd("C:/Users/Matteo/Documents/Courses/03 - Getting and Cleaning Data/R Data & Code/Course project/UCI HAR Dataset/test")
x_test<-read.table("X_test.txt")
subject_test<-read.table("subject_test.txt")
y_test<-read.table("y_test.txt",colClasses="integer")

# go to upper folder and import features labels. 2nd column needed as character for the subsequent
# string matching of lines 28-29 by using grep()
setwd("..")
features<-read.table("features.txt",colClasses = c("integer","character"))
# Set understandable row.names
colnames(features)<-c("feat_index","feat_name")

# merge data (X), activity (y) and labels (subject) of training and test
X_all <- rbind(x_train,x_test)
y_all <- rbind(y_train,y_test)
subject_all <- rbind(subject_train,subject_test)

# find variables that are "mean" and "std" of something and generate a sorted list of indices
# used for subsetting (retaining) only those variables 
v_mean<-grep("mean()", features[,2], ignore.case = FALSE,value=FALSE)
v_freq <- grep("meanFreq()", features[,2], ignore.case = FALSE,value=FALSE)
        # remove meanFreq
        ind_in = logical(length = length(v_mean))
        for (i in 1:length(v_mean)){
                if(sum(v_mean[i]==v_freq)==0) {
                        ind_in[i] = TRUE
                }
        }
v_mean<-v_mean[ind_in]
v_std<-grep("std()", features[,2], ignore.case = TRUE,value=FALSE)
v_to_retain <-sort(c(v_mean,v_std))

# Subset X_all retaining only variables that are "mean" or "std"
X <- X_all[,v_to_retain]
names(X)<-features[v_to_retain,2]

# transform y_all into a factor vector and give activity names to the levels
y_all <- factor(y_all[,1])
levels(y_all)<-c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")

# transform subjects to factor
subject_all <- factor(subject_all[,1])

# add columns with subject and activity factors to use for melting
X$subject<-subject_all
X$activity<-y_all

# melt dataset using subject and acitivity as id
melted<-melt(X,id=c("subject","activity"),measure.vars=names(X[1:length(v_to_retain)]))

# generate tidy dataset with all combinations of subject-activity and mean of the variables
tidy<-dcast(melted,interaction(subject,activity) ~ variable,mean)

# push the tidy dataset to the global environment
tidy<<-tidy
#save as txt file (semicolon separated)
write.table(tidy, file = "tidy_dataset.txt", sep = ";",row.name=FALSE)
}
