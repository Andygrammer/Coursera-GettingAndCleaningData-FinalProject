run_analysis <- function() {
  ## 1.a. Get the training and the test sets
  setwd("~/Documentos/Projetos em R/Coursera - DS Course 3/UCI HAR Dataset/")
  library(plyr)
  library(data.table)
  subjectTrain <- read.table('train/subject_train.txt', header = FALSE)
  xTrain <- read.table('train/X_train.txt', header = FALSE)
  yTrain <- read.table('train/y_train.txt', header = FALSE)
  subjectTest <- read.table('test/subject_test.txt', header = FALSE)
  xTest <- read.table('test/X_test.txt', header = FALSE)
  yTest <- read.table('test/y_test.txt', header = FALSE)
  
  ## 1.b. Merges the training and test sets
  subjectDataSet <- rbind(subjectTrain, subjectTest)
  xDataSet <- rbind(xTrain, xTest)
  yDataSet <- rbind(yTrain, yTest)
  
  ## 2. Extracts only the measurements on the mean and standard deviation for 
  ## each measurement
  xDataSet_measurements <- xDataSet[, grep("-(mean|std)\\(\\)", read.table("features.txt")[, 2])]
  names(xDataSet_measurements) <- read.table("features.txt")[grep("-(mean|std)\\(\\)", read.table("features.txt")[, 2]), 2]
  
  ## 3. Uses descriptive activity names to name the activities in the data set
  yDataSet[, 1] <- read.table("activity_labels.txt")[yDataSet[, 1], 2]
  names(yDataSet) <- "Activity"
  
  ## 4. Appropriately labels the data set with descriptive variable names
  names(subjectDataSet) <- "Subject"
  completeDataSet <- cbind(xDataSet_measurements, yDataSet, subjectDataSet)
  names(completeDataSet) <- gsub('Acc',"Acceleration",names(completeDataSet))
  names(completeDataSet) <- gsub('GyroJerk',"AngularAcceleration",names(completeDataSet))
  names(completeDataSet) <- gsub('Gyro',"AngularSpeed",names(completeDataSet))
  names(completeDataSet) <- gsub('Mag',"Magnitude",names(completeDataSet))
  names(completeDataSet) <- gsub('^t',"TimeDomain.",names(completeDataSet))
  names(completeDataSet) <- gsub('^f',"FrequencyDomain.",names(completeDataSet))
  names(completeDataSet) <- gsub('\\.mean',".Mean",names(completeDataSet))
  names(completeDataSet) <- gsub('\\.std',".StandardDeviation",names(completeDataSet))
  names(completeDataSet) <- gsub('Freq\\.',"Frequency.",names(completeDataSet))
  names(completeDataSet) <- gsub('Freq$',"Frequency",names(completeDataSet))
  names(completeDataSet) <- gsub("BodyBody", "Body", names(completeDataSet))
  
  ## 5. From the data set in step 4, creates a second, independent tidy data set 
  ## with the average of each variable for each activity and each subject
  data_tidy <- aggregate(. ~Subject + Activity, completeDataSet, mean)
  data_tidy <- data_tidy[order(data_tidy$Subject,data_tidy$Activity), ]
  write.table(data_tidy, file = "tidydata.txt", row.names=FALSE)
  }