
library(plyr)
#Get the file data

fileTestSubject<-"./UCI HAR Dataset/test/subject_test.txt"
fileTestX<-"./UCI HAR Dataset/test/X_test.txt"
fileTestY<-"./UCI HAR Dataset/test/Y_test.txt"

#Read Test data
testSubject<-read.table(fileTestSubject,na.string="")
testX<-read.table(fileTestX,na.string="")
testY<-read.table(fileTextY,na.string="")

#Get train data
fileTrainSubject<-"./UCI HAR Dataset/test/subject_train.txt"
fileTrainX<-"./UCI HAR Dataset/train/X_train.txt"
fileTrainY<-"./UCI HAR Dataset/train/Y_train.txt"

#Read Train Data
trainSubject<-read.table(fileTrainSubject,na.string="")
trainX<-read.table(fileTrainX,na.string="")
trainY<-read.table(fileTrainY,na.string="")

#Read Activity
fileActivityLabels<-"./UCI HAR Dataset/activity_labels.txt"
activityLabels<-read.table(fileActivityLabels,na.string="")
#Merge Activity with Test and Train respectively
mergeTestYActivity<-merge(testY,activityLabels,by.x="V1",by.y="V1",na.rm=TRUE)
mergeTrainYActivity<-merge(trainY,activityLabels,by.x="V1",by.y="V1",na.rm=TRUE)

#Merge Test Train Data
mergeTestData<-cbind(testSubject, mergeTestYActivity,testX)
mergeTrainData<-cbind(trainSubject,mergeTrainYActivity,trainX)

mergeTestTrainData<-rbind(mergeTestData,mergeTrainData)

#Read Feature
fileFeature<-"./UCI HAR Dataset/features.txt"
featuresData<-read.table(fileFeature,na.string="")
meanstd <- subset(featuresData,  grepl("(mean\\(\\)|std\\(\\))", featuresData$V2) )
#Give column Names
colnames(mergeTestTrainData) <- c("Subject", "Activity_Id","Activity",as.vector(featuresData[,2]))

mergeTestTrainData <- arrange(mergeTestTrainData, mergeTestTrainData$Subject, mergeTestTrainData$Activity_Id)

#Get mean
df <- ddply(mergeTestTrainData[, 1:68], .(Subject,Activity_Id),  colwise(mean))
#Write Summary
write.table(df, file="summary.txt", row.name=FALSE)



  