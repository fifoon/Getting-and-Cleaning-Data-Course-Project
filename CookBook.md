
# Description
The purpose of run_analysis.R is to post process these files and creates a second, independent tidy data set with the average of each variable for each activity and each subject.

UCI HAR Dataset/features.txt
UCI HAR Dataset/activity_labels.txt
UCI HAR Dataset/train/X_train.txt
UCI HAR Dataset/train/Y_train.txt
UCI HAR Dataset/train/subject_train.txt
UCI HAR Dataset/test/X_test.txt
UCI HAR Dataset/test/Y_test.txt
UCI HAR Dataset/test/subject_test.txt

Activity can be devided into 6 categories

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

# Measurement 

 "tBodyAccMeanX"                  "tBodyAccMeanY"                 
 "tBodyAccMeanZ"                  "tBodyAccStdDevX"               
 "tBodyAccStdDevY"                "tBodyAccStdDevZ"               
 "tGravityAccMeanX"               "tGravityAccMeanY"              
 "tGravityAccMeanZ"               "tGravityAccStdDevX"            
 "tGravityAccStdDevY"             "tGravityAccStdDevZ"            
 "tBodyAccJerkMeanX"              "tBodyAccJerkMeanY"             
 "tBodyAccJerkMeanZ"              "tBodyAccJerkStdDevX"           
 "tBodyAccJerkStdDevY"            "tBodyAccJerkStdDevZ"           
 "tBodyGyroMeanX"                 "tBodyGyroMeanY"                
 "tBodyGyroMeanZ"                 "tBodyGyroStdDevX"              
 "tBodyGyroStdDevY"               "tBodyGyroStdDevZ"              
 "tBodyGyroJerkMeanX"             "tBodyGyroJerkMeanY"            
 "tBodyGyroJerkMeanZ"             "tBodyGyroJerkStdDevX"          
 "tBodyGyroJerkStdDevY"           "tBodyGyroJerkStdDevZ"          
 "tBodyAccMagnitudeMean"          "tBodyAccMagnitudeStdDev"       
 "tGravityAccMagnitudeMean"       "tGravityAccMagnitudeStdDev"    
 "tBodyAccJerkMagnitudeMean"      "tBodyAccJerkMagnitudeStdDev"   
 "tBodyGyroMagMean"               "tBodyGyroMagStdDev"            
 "tBodyGyroJerkMagnitudeMean"     "tBodyGyroJerkMagnitudeStdDev"  
 "fBodyAccMeanX"                  "fBodyAccMeanY"                 
 "fBodyAccMeanZ"                  "fBodyAccStdDevX"               
 "fBodyAccStdDevY"                "fBodyAccStdDevZ"               
 "fBodyAccMeanFreqX"              "fBodyAccMeanFreqY"             
 "fBodyAccMeanFreqZ"              "fBodyAccJerkMeanX"             
 "fBodyAccJerkMeanY"              "fBodyAccJerkMeanZ"             
 "fBodyAccJerkStdDevX"            "fBodyAccJerkStdDevY"           
 "fBodyAccJerkStdDevZ"            "fBodyAccJerkMeanFreqX"         
 "fBodyAccJerkMeanFreqY"          "fBodyAccJerkMeanFreqZ"         
 "fBodyGyroMeanX"                 "fBodyGyroMeanY"                
 "fBodyGyroMeanZ"                 "fBodyGyroStdDevX"              
 "fBodyGyroStdDevY"               "fBodyGyroStdDevZ"              
 "fBodyGyroMeanFreqX"             "fBodyGyroMeanFreqY"            
 "fBodyGyroMeanFreqZ"             "fBodyAccMagnitudeMean"         
 "fBodyAccMagnitudeStdDev"        "fBodyAccMagnitudeMeanFreq"     
 "fBodyAccJerkMagnitudeMean"      "fBodyAccJerkMagnitudeStdDev"   
 "fBodyAccJerkMagnitudeMeanFreq"  "fBodyGyroMagMean"              
 "fBodyGyroMagStdDev"             "fBodyGyroMagMeanFreq"          
 "fBodyGyroJerkMagnitudeMean"     "fBodyGyroJerkMagnitudeStdDev"  
 "fBodyGyroJerkMagnitudeMeanFreq"
