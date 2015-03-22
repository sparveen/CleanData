
library(plyr)
#Get the file data

fileTestSubject<-"./UCI HAR Dataset/test/subject_test.txt"
fileTestX<-"./UCI HAR Dataset/test/X_test.txt"
fileTestY<-"./UCI HAR Dataset/test/Y_test.txt"

#Read Test data
testSubject<-read.table(fileTestSubject,na.string="")
testX<-read.table(fileTestX,na.string="")
testY<-read.table(fileTestY,na.string="")

#Get train data
fileTrainSubject<-"./UCI HAR Dataset/train/subject_train.txt"
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

#Read Feature
fileFeature<-"./UCI HAR Dataset/features.txt"
featuresData<-read.table(fileFeature,na.string="")
colnames(featuresData) <- c("feature_Id", "feature")
colnames(testX) <- featuresData$feature
meanstd <- grep("(mean\\(\\)|std\\(\\))", colnames(testX))
testX<-testX[,meanstd]

colnames(trainX) <- featuresData$feature
meanstd <- grep("(mean\\(\\)|std\\(\\))", colnames(trainX))
trainX<-trainX[,meanstd]


#Merge Test Train Data
mergeTestData<-cbind(testSubject, mergeTestYActivity,testX)
mergeTrainData<-cbind(trainSubject,mergeTrainYActivity,trainX)

mergeTestTrainData<-rbind(mergeTestData,mergeTrainData)

#Give column Names
names(mergeTestTrainData)[1]<-"Subject"
names(mergeTestTrainData)[2]<-"Activity_Id"
names(mergeTestTrainData)[3]<-"Activity"

mergeTestTrainData <- arrange(mergeTestTrainData, mergeTestTrainData$Subject, mergeTestTrainData$Activity_Id)

#Get mean
df <- ddply(mergeTestTrainData, .(Subject,Activity),  colwise(mean))
#Write Summary
write.table(df, file="summary.txt", row.name=FALSE)



  