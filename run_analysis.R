#run_analysis.R

install.packages("reshape2")
library(reshape2)

#Make sure run_analysis.R is located the same directory as UCI HAR Dataset#

#Read in features and activity lables
features <- read.table("UCI HAR Dataset/features.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features[,2] <- as.character(features[,2])

#Read in Train activites and train subject
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

#Read in TEST activites and TEST subject
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")


#2. Extracts only the measurements on the mean and standard deviation from features
Extractedfeatures <- grep(".*mean.*|.*std.*", features[,2])
Extractedfeatures

Extractedfeatures.names <- features[Extractedfeatures,2]
Extractedfeatures.names

#4.Uses descriptive activity names to name the activities in the data set
#Rename -mean to Mean
Extractedfeatures.names <- gsub('-mean', 'Mean', Extractedfeatures.names)
#Rename -std to StdDev
Extractedfeatures.names <- gsub('-std', 'StdDev', Extractedfeatures.names)
#Make Gravity word consistent
Extractedfeatures.names <- gsub('([Gg]ravity)','Gravity', Extractedfeatures.names)
#Make body word consistent
Extractedfeatures.names <- gsub('([Bb]ody[Bb]ody|[Bb]ody)','Body', Extractedfeatures.names)
#Convert AccMag to AccMagnitude
Extractedfeatures.names <- gsub('AccMag','AccMagnitude' , Extractedfeatures.names)
#Convert JerkMag to JerkMagnitude
Extractedfeatures.names <- gsub('JerkMag','JerkMagnitude' , Extractedfeatures.names)
#Remove -()
Extractedfeatures.names <- gsub('[-()]', '', Extractedfeatures.names)
Extractedfeatures.names

# Load the datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[Extractedfeatures]
train <- cbind(trainSubjects, trainActivities, train)


test <- read.table("UCI HAR Dataset/test/X_test.txt")[Extractedfeatures]
test <- cbind(testSubjects, testActivities, test)

#1. Merges the training and the test sets to create one data set and updates labels
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", Extractedfeatures.names)

#3. Use descriptive activity names to name the activities in the data set
# convert activities & subjects into factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

#5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
