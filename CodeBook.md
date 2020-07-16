# CodeBook: Getting and Cleaning Data - Course Project

## 1. About the data
- Merging the original training and the test sets to create one data set.
- Extracting only the measurements on the mean and standard deviation for each measurement.
- Using descriptive activity names to name the activities in the data set.
- Appropriately labeling the data set with descriptive variable names.
- Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

## 2.About the variables
- subjectDataSet: "subject_train.txt" and "subject_test.txt" merged.
- xDataSet: "X_train.txt" and "X_test.txt" merged.
- yDataSet: "y_train.txt" and "y_test.txt" merged.
- xDataSet_measurements: the data containing only the measurements on the mean and standard deviation for each measurement.
- yDataSet: the data containing descriptive activity names to name the activities.
- completeDataSet: complete data with descriptive variable names.
- data_tidy: a second, independent tidy data set.

## 3. About the transformations (performed to clean up the data)
- Rename the measurements with mean/standard deviation
- Rename labels those not tidy

(Please, note **4** for comparison and results.)


## 4. Newly tidy data set labels

 [1] "Subject"                                                
 [2] "Activity"                                               
 [3] "TimeDomain.BodyAcceleration-mean()-X"                   
 [4] "TimeDomain.BodyAcceleration-mean()-Y"                   
 [5] "TimeDomain.BodyAcceleration-mean()-Z"                   
 [6] "TimeDomain.BodyAcceleration-std()-X"                    
 [7] "TimeDomain.BodyAcceleration-std()-Y"                    
 [8] "TimeDomain.BodyAcceleration-std()-Z"                    
 [9] "TimeDomain.GravityAcceleration-mean()-X"                
[10] "TimeDomain.GravityAcceleration-mean()-Y"                
[11] "TimeDomain.GravityAcceleration-mean()-Z"                
[12] "TimeDomain.GravityAcceleration-std()-X"                 
[13] "TimeDomain.GravityAcceleration-std()-Y"                 
[14] "TimeDomain.GravityAcceleration-std()-Z"                 
[15] "TimeDomain.BodyAccelerationJerk-mean()-X"               
[16] "TimeDomain.BodyAccelerationJerk-mean()-Y"               
[17] "TimeDomain.BodyAccelerationJerk-mean()-Z"               
[18] "TimeDomain.BodyAccelerationJerk-std()-X"                
[19] "TimeDomain.BodyAccelerationJerk-std()-Y"                
[20] "TimeDomain.BodyAccelerationJerk-std()-Z"                
[21] "TimeDomain.BodyAngularSpeed-mean()-X"                   
[22] "TimeDomain.BodyAngularSpeed-mean()-Y"                   
[23] "TimeDomain.BodyAngularSpeed-mean()-Z"                   
[24] "TimeDomain.BodyAngularSpeed-std()-X"                    
[25] "TimeDomain.BodyAngularSpeed-std()-Y"                    
[26] "TimeDomain.BodyAngularSpeed-std()-Z"                    
[27] "TimeDomain.BodyAngularAcceleration-mean()-X"            
[28] "TimeDomain.BodyAngularAcceleration-mean()-Y"            
[29] "TimeDomain.BodyAngularAcceleration-mean()-Z"            
[30] "TimeDomain.BodyAngularAcceleration-std()-X"             
[31] "TimeDomain.BodyAngularAcceleration-std()-Y"             
[32] "TimeDomain.BodyAngularAcceleration-std()-Z"             
[33] "TimeDomain.BodyAccelerationMagnitude-mean()"            
[34] "TimeDomain.BodyAccelerationMagnitude-std()"             
[35] "TimeDomain.GravityAccelerationMagnitude-mean()"         
[36] "TimeDomain.GravityAccelerationMagnitude-std()"          
[37] "TimeDomain.BodyAccelerationJerkMagnitude-mean()"        
[38] "TimeDomain.BodyAccelerationJerkMagnitude-std()"         
[39] "TimeDomain.BodyAngularSpeedMagnitude-mean()"            
[40] "TimeDomain.BodyAngularSpeedMagnitude-std()"             
[41] "TimeDomain.BodyAngularAccelerationMagnitude-mean()"     
[42] "TimeDomain.BodyAngularAccelerationMagnitude-std()"      
[43] "FrequencyDomain.BodyAcceleration-mean()-X"              
[44] "FrequencyDomain.BodyAcceleration-mean()-Y"              
[45] "FrequencyDomain.BodyAcceleration-mean()-Z"              
[46] "FrequencyDomain.BodyAcceleration-std()-X"               
[47] "FrequencyDomain.BodyAcceleration-std()-Y"               
[48] "FrequencyDomain.BodyAcceleration-std()-Z"               
[49] "FrequencyDomain.BodyAccelerationJerk-mean()-X"          
[50] "FrequencyDomain.BodyAccelerationJerk-mean()-Y"          
[51] "FrequencyDomain.BodyAccelerationJerk-mean()-Z"          
[52] "FrequencyDomain.BodyAccelerationJerk-std()-X"           
[53] "FrequencyDomain.BodyAccelerationJerk-std()-Y"           
[54] "FrequencyDomain.BodyAccelerationJerk-std()-Z"           
[55] "FrequencyDomain.BodyAngularSpeed-mean()-X"              
[56] "FrequencyDomain.BodyAngularSpeed-mean()-Y"              
[57] "FrequencyDomain.BodyAngularSpeed-mean()-Z"              
[58] "FrequencyDomain.BodyAngularSpeed-std()-X"               
[59] "FrequencyDomain.BodyAngularSpeed-std()-Y"               
[60] "FrequencyDomain.BodyAngularSpeed-std()-Z"               
[61] "FrequencyDomain.BodyAccelerationMagnitude-mean()"       
[62] "FrequencyDomain.BodyAccelerationMagnitude-std()"        
[63] "FrequencyDomain.BodyAccelerationJerkMagnitude-mean()"   
[64] "FrequencyDomain.BodyAccelerationJerkMagnitude-std()"    
[65] "FrequencyDomain.BodyAngularSpeedMagnitude-mean()"       
[66] "FrequencyDomain.BodyAngularSpeedMagnitude-std()"        
[67] "FrequencyDomain.BodyAngularAccelerationMagnitude-mean()"
[68] "FrequencyDomain.BodyAngularAccelerationMagnitude-std()" 
