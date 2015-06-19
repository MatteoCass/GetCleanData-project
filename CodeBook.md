# CodeBook
This code book describes the variables of the final tidy dataset.

## Measured signals and raw variables
The raw variables come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. Time domain signals (prefix 't' to denote time) were captured and then filtered to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (*tBodyAcc-XYZ* and *tGravityAcc-XYZ*) using another filter. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (*tBodyAccJerk-XYZ* and *tBodyGyroJerk-XYZ*). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (*tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag*). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing *fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag*. (Note the 'f' to indicate frequency domain signals). 

A set of variables was estimated from these signals, including mean and standard deviation. 

## Variables of the final tidy dataset
Here, only the 66 variables of mean and standard deviations were retained. For each subject and activity several measurements of the same variable were obtained. The tidy dataset contains, for each variable, the average value calculated from multiple measurements for each single subject performing a single activity. Information on the variables of the tidy dataset are reported below. 

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
20. tBodyGyro-mean()-X: mean body angular velocity along X-axis in time domain.
21. tBodyGyro-mean()-Y: mean body angular velocity along Y-axis in time domain.
22. tBodyGyro-mean()-Z: mean body angular velocity along Z-axis in time domain.
23. tBodyGyro-std()-X: standard deviation of body angular velocity along X-axis in time domain.
24. tBodyGyro-std()-Y: standard deviation of body angular velocity along Y-axis in time domain.
25. tBodyGyro-std()-Z: standard deviation of body angular velocity along Z-axis in time domain.
26. tBodyGyroJerk-mean()-X: mean of Jerk signals from body angular velocity along X-axis in time domain.
27. tBodyGyroJerk-mean()-Y: mean of Jerk signals from body angular velocity along Y-axis in time domain.
28. tBodyGyroJerk-mean()-Z: mean of Jerk signals from body angular velocity along Z-axis in time domain.
29. tBodyGyroJerk-std()-X: standard deviation of Jerk signals from body angular velocity along X-axis in time domain.
30. tBodyGyroJerk-std()-Y: standard deviation of Jerk signals from body angular velocity along Y-axis in time domain.
31. tBodyGyroJerk-std()-Z: standard deviation of Jerk signals from body angular velocity along Z-axis in time domain.
32. tBodyAccMag-mean(): mean magnitude of three-dimensional body acceleration in time domain.
33. tBodyAccMag-std(): standard deviation of magnitude of three-dimensional body acceleration in time domain.
34. tGravityAccMag-mean(): mean magnitude of three-dimensional gravity acceleration in time domain.
35. tGravityAccMag-std(): standard deviation of magnitude of three-dimensional gravity acceleration in time domain.
36. tBodyAccJerkMag-mean(): mean magnitude of three-dimensional Jerk signals from body acceleration in time domain.
37. tBodyAccJerkMag-std(): standard deviation of magnitude of three-dimensional Jerk signals from body acceleration in time domain.
38. tBodyGyroMag-mean(): mean magnitude of three-dimensional body angular velcoty in time domain.
39. tBodyGyroMag-std(): standard deviation of magnitude of three-dimensional body angular velcoty in time domain.
40. tBodyGyroJerkMag-mean():  mean magnitude of three-dimensional Jerk signals from body angular velocity in time domain.
41. tBodyGyroJerkMag-std(): standard deviation of magnitude of three-dimensional Jerk signals from body angular velcoty in time domain.
42. fBodyAcc-mean()-X: mean body acceleration along X-axis in frequency domain.
43. fBodyAcc-mean()-Y: mean body acceleration along Y-axis in frequency domain.
44. fBodyAcc-mean()-Z: mean body acceleration along Z-axis in frequency domain.
45. fBodyAcc-std()-X: standard deviation of body acceleration along X-axis in frequency domain.
46. fBodyAcc-std()-Y: standard deviation of body acceleration along Y-axis in frequency domain.
47. fBodyAcc-std()-Z: standard deviation of body acceleration along Z-axis in frequency domain.
48. fBodyAccJerk-mean()-X: mean of Jerk signals from body acceleration along X-axis in frequency domain.
49. fBodyAccJerk-mean()-Y: mean of Jerk signals from body acceleration along Y-axis in frequency domain.
50. fBodyAccJerk-mean()-Z: mean of Jerk signals from body acceleration along Z-axis in frequency domain.
51. fBodyAccJerk-std()-X: standard deviation of Jerk signals from body acceleration along X-axis in frequency domain.
52. fBodyAccJerk-std()-Y: standard deviation of Jerk signals from body acceleration along Y-axis in frequency domain.
53. fBodyAccJerk-std()-Z: standard deviation of Jerk signals from body acceleration along Z-axis in frequency domain.
54. fBodyGyro-mean()-X: mean body angular veocity along X-axis in frequency domain.
55. fBodyGyro-mean()-Y: mean body angular veocity along Y-axis in frequency domain.
56. fBodyGyro-mean()-Z: mean body angular veocity along Z-axis in frequency domain.
57. fBodyGyro-std()-X: standard deviation of body angular veocity along X-axis in frequency domain.
58. fBodyGyro-std()-Y: standard deviation of body angular veocity along Y-axis in frequency domain.
59. fBodyGyro-std()-Z: standard deviation of body angular veocity along Z-axis in frequency domain.
60. fBodyAccMag-mean(): mean magnitude of three-dimensional body acceleration in frequency domain.
61. fBodyAccMag-std(): standard deviation of magnitude of three-dimensional body acceleration in frequency domain.
62. fBodyBodyAccJerkMag-mean(): mean magnitude of three-dimensional Jerk signals from body acceleration in frequency domain.
63. fBodyBodyAccJerkMag-std(): standard deviation of magnitude of three-dimensional Jerk signals from body acceleration in frequency domain.
64. fBodyBodyGyroMag-mean(): mean magnitude of three-dimensional body angular velocity in frequency domain.
65. fBodyBodyGyroMag-std(): standard deviation of magnitude of three-dimensional body angular velocity in frequency domain.
66. fBodyBodyGyroJerkMag-mean(): mean magnitude of three-dimensional Jerk signals from body angular velocity in frequency domain.
67. fBodyBodyGyroJerkMag-std(): standard deviation of magnitude of three-dimensional Jerk signals from body angular velocity in frequency domain.


