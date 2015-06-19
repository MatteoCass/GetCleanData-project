# CodeBook
This code book describes the variables of the final tidy dataset.

## Measured signals and raw variables
The raw variables come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. Time domain signals (prefix 't' to denote time) were captured and then filtered to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (*tBodyAcc-XYZ* and *tGravityAcc-XYZ*) using another filter. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (*tBodyAccJerk-XYZ* and *tBodyGyroJerk-XYZ*). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (*tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag*). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing *fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag*. (Note the 'f' to indicate frequency domain signals). 

A set of variables was estimated from these signals, including mean and standard deviation. 

## Variables of the final tidy dataset
Here, only the mean and standard deviations were retained. For each subject and activity several measurements of the same variable were obtained. The tidy dataset contains, for each variable, the average value calculated from multiple measurements for each single subject performing a single activity. Information on the variables of the tidy dataset are reported below. 

1. interaction(subject, activity): indicates the combination of subject id - activity. The first digit is the id of the subject, following is a *.* and then the name of the activity.
2. tBodyAcc-mean()-X: mean body acceleration along X-axis in time domain.
3. tBodyAcc-mean()-Y: mean body acceleration along Y-axis in time domain.
4. tBodyAcc-mean()-Z: mean body acceleration along Z-axis in time domain.
5. tBodyAcc-std()-X: standard deviation of body acceleration along X-axis in time domain.
6. tBodyAcc-std()-Y: standard deviation of body acceleration along Y-axis in time domain.
7. tBodyAcc-std()-Z: standard deviation of body acceleration along Z-axis in time domain.
8. tGravityAcc-mean()-X: mean gravity acceleration along X-axis in time domain.
9. tGravityAcc-mean()-Y: mean gravity acceleration along Y-axis in time domain.
10. tGravityAcc-mean()-Z: mean gravity acceleration along Z-axis in time domain.
11. tGravityAcc-std()-X: standard deviation of gravity acceleration along X-axis in time domain.
12. tGravityAcc-std()-Y: standard deviation of gravity acceleration along Y-axis in time domain.
13. tGravityAcc-std()-Z: standard deviation of gravity acceleration along Z-axis in time domain.
14. tBodyAccJerk-mean()-X: mean of Jerk signals from body acceleration along X-axis in time domain.
15. tBodyAccJerk-mean()-Y: mean of Jerk signals from body acceleration along Y-axis in time domain.
16. tBodyAccJerk-mean()-Z: mean of Jerk signals from body acceleration along Z-axis in time domain.
17. tBodyAccJerk-std()-X: standard deviation of Jerk signals from body acceleration along X-axis in time domain.
18. tBodyAccJerk-std()-Y: standard deviation of Jerk signals from body acceleration along Y-axis in time domain.
19. tBodyAccJerk-std()-Z: standard deviation of Jerk signals from body acceleration along Z-axis in time domain.
20. tBodyGyro-mean()-X: 
21. tBodyGyro-mean()-Y:
22. tBodyGyro-mean()-Z:
23. tBodyGyro-std()-X:
24. tBodyGyro-std()-Y:
25. tBodyGyro-std()-Z:
26. tBodyGyroJerk-mean()-X:
27. tBodyGyroJerk-mean()-Y:
28. tBodyGyroJerk-mean()-Z:
29. tBodyGyroJerk-std()-X:
30. tBodyGyroJerk-std()-Y:
31. tBodyGyroJerk-std()-Z:
32. tBodyAccMag-mean():
33. tBodyAccMag-std():
34. tGravityAccMag-mean():
35. tGravityAccMag-std():
36. tBodyAccJerkMag-mean():
37. tBodyAccJerkMag-std():
38. tBodyGyroMag-mean():
39. tBodyGyroMag-std():
40. tBodyGyroJerkMag-mean():
41. tBodyGyroJerkMag-std():
42. fBodyAcc-mean()-X:
43. fBodyAcc-mean()-Y:
44. fBodyAcc-mean()-Z:
45. fBodyAcc-std()-X:
46. fBodyAcc-std()-Y:
47. fBodyAcc-std()-Z:
48. fBodyAcc-meanFreq()-X:
49. fBodyAcc-meanFreq()-Y:
50. fBodyAcc-meanFreq()-Z:
51. fBodyAccJerk-mean()-X:
52. fBodyAccJerk-mean()-Y:
53. fBodyAccJerk-mean()-Z:
54. fBodyAccJerk-std()-X:
55. fBodyAccJerk-std()-Y:
56. fBodyAccJerk-std()-Z:
57. fBodyAccJerk-meanFreq()-X:
58. fBodyAccJerk-meanFreq()-Y:
59. fBodyAccJerk-meanFreq()-Z:
60. fBodyGyro-mean()-X:
61. fBodyGyro-mean()-Y:
62. fBodyGyro-mean()-Z:
63. fBodyGyro-std()-X:
64. fBodyGyro-std()-Y:
65. fBodyGyro-std()-Z:
66. fBodyGyro-meanFreq()-X:
67. fBodyGyro-meanFreq()-Y:
68. fBodyGyro-meanFreq()-Z:
69. fBodyAccMag-mean():
70. fBodyAccMag-std():
71. fBodyAccMag-meanFreq():
72. fBodyBodyAccJerkMag-mean():
73. fBodyBodyAccJerkMag-std():
74. fBodyBodyAccJerkMag-meanFreq():
75. fBodyBodyGyroMag-mean():
76. fBodyBodyGyroMag-std():
77. fBodyBodyGyroMag-meanFreq():
78. fBodyBodyGyroJerkMag-mean():
79. fBodyBodyGyroJerkMag-std():
80. fBodyBodyGyroJerkMag-meanFreq():
81. angle(tBodyAccMean,gravity):
82. angle(tBodyAccJerkMean),gravityMean):
83. angle(tBodyGyroMean,gravityMean):
84. angle(tBodyGyroJerkMean,gravityMean):
85. angle(X,gravityMean):
86. angle(Y,gravityMean):
87. angle(Z,gravityMean):

