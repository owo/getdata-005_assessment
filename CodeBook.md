#Code Book

The descriptions of the features included in the tidy data set are divided in to groups of related measurements. Each group will contain features that perform a measurement on the mean of the observation of the observation and a measurement on the standard deviation of the observation. The only exception to this grouping is *activityLabel* which is a single token description of the activity taking place during each observation. Furthermore, features ennding in '-X', '-Y', or '-Z, are measurements of motion taken on the *x*, *y*, and *z* axis respictively. The descriptions provided are of the original measurement data (not std or mean).

**tBodyAcc-mean()-X**  
**tBodyAcc-mean()-Y**  
**tBodyAcc-mean()-Z**  
**tBodyAcc-std()-X**  
**tBodyAcc-std()-Y**  
**tBodyAcc-std()-Z**: Linear body acceleration of mobile device computed by subtracting the total acceleration from the computed acceleration of gravity (**tGravityAcc**). Measured in standard gravity units (**g**).  

**tGravityAcc-mean()-X**  
**tGravityAcc-mean()-Y**  
**tGravityAcc-mean()-Z**  
**tGravityAcc-std()-X**  
**tGravityAcc-std()-Y**  
**tGravityAcc-std()-Z**: Computed acceleration of gravity. Measured in standard gravity units (**g**).  

**tBodyAccJerk-mean()-X**  
**tBodyAccJerk-mean()-Y**  
**tBodyAccJerk-mean()-Z**  
**tBodyAccJerk-std()-X**  
**tBodyAccJerk-std()-Y**  
**tBodyAccJerk-std()-Z**: Derived jerk values of the **tBodyAcc** measurements. Measured in **g**'s per second.  

**tBodyGyro-mean()-X**  
**tBodyGyro-mean()-Y**  
**tBodyGyro-mean()-Z**  
**tBodyGyro-std()-X**  
**tBodyGyro-std()-Y**  
**tBodyGyro-std()-Z**: Radial acceleration of the device. Measured in radians per second squared.  

**tBodyGyroJerk-mean()-X**  
**tBodyGyroJerk-mean()-Y**  
**tBodyGyroJerk-mean()-Z**  
**tBodyGyroJerk-std()-X**  
**tBodyGyroJerk-std()-Y**  
**tBodyGyroJerk-std()-Z**: Derived jerk values of the **tBodyGyro** measurements. Measured in radians per second cubed.

**tBodyAccMag-mean()**  
**tBodyAccMag-std()**: The magnitude of the linear acceleration of the device. Measured in standard gravity units (**g**).  

**tGravityAccMag-mean()**  
**tGravityAccMag-std()**: The magnitude of the linear acceleration of gravity. Measured in standard gravity units (**g**).   

**tBodyAccJerkMag-mean()**  
**tBodyAccJerkMag-std()**: The magnitude of the derived linear jerk of the device. Measured in **g**'s per second.  

**tBodyGyroMag-mean()**  
**tBodyGyroMag-std()**: The magnitude of the radial acceleration of the device. Measured in radians per second squared.   

**tBodyGyroJerkMag-mean()**  
**tBodyGyroJerkMag-std()**  The magnitude of the derived radial jerk of the device. Measured in radians per second cubed.

**fBodyAcc-mean()-X**  
**fBodyAcc-mean()-Y**  
**fBodyAcc-mean()-Z**  
**fBodyAcc-std()-X**  
**fBodyAcc-std()-Y**  
**fBodyAcc-std()-Z**  
**fBodyAccJerk-mean()-X**  
**fBodyAccJerk-mean()-Y**  
**fBodyAccJerk-mean()-Z**  
**fBodyAccJerk-std()-X**  
**fBodyAccJerk-std()-Y**  
**fBodyAccJerk-std()-Z**  
**fBodyGyro-mean()-X**  
**fBodyGyro-mean()-Y**  
**fBodyGyro-mean()-Z**  
**fBodyGyro-std()-X**  
**fBodyGyro-std()-Y**  
**fBodyGyro-std()-Z**  
**fBodyAccMag-mean()**  
**fBodyAccMag-std()**  
**fBodyBodyAccJerkMag-mean()**  
**fBodyBodyAccJerkMag-std()**  
**fBodyBodyGyroMag-mean()**  
**fBodyBodyGyroMag-std()**  
**fBodyBodyGyroJerkMag-mean()**  
**fBodyBodyGyroJerkMag-std()**: These features are the measurements previously described (begining with **t**) after applying the Fast Fourier Transform. This means they are in the frequency domain and are measured in Hertz. 

**activityLabel**: 
This label indicates the activity type of a given measurement. Possible values are: *LAYING*, *SITTING*, *STANDING*, *WALKING*, *WALKING_DOWNSTAIRS*, and *WALKING_UPSTAIRS*.
 
