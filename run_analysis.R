#### Downloading Data
baseDir <- "~/Courses/cleaning_data/project/"
setwd(baseDir)
dataSrc <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataDir <- "data"
zipFile <- "Dataset.zip"
if (!file.exists(dataDir)) {
dir.create(dataDir)
}	
setwd(dataDir)
download.file(dataSrc, destfile = zipFile, method = "wget")
date()
list.files(pattern = zipFile)
unzip(zipFile)
dataBaseDir <- "UCI HAR Dataset"
setwd(dataBaseDir)



#####Read all files
feature<-read.table("features.txt")
test1<-read.table("test/subject_test.txt",col.names="subject")
test2<-read.table("test/y_test.txt",col.names="activity")
test3<-read.table("test/X_test.txt")
train1<-read.table("train/subject_train.txt",col.names="subject")
train2<-read.table("train/y_train.txt",col.names="activity")
train3<-read.table("train/X_train.txt")


#merge the test and training data
data_all<-rbind((cbind(test1,test2,test3)),(cbind(train1,train2,train3)))
colnames(data_all)<-c("subject","activity",paste(feature[,2]))
names(data_all)

#extact all measurements with mean and standard deviations
str<-c("mean\\(\\)","std\\(\\)")
data_var1 <- (data_all[grepl(paste(str,collapse="|"), names( data_all ) ) ])
dataset1<-cbind(data_all$subject,data_all$activity,data_var1)
names(dataset1)<-c("subject","activity",paste(names(data_var1)))
names(dataset1)

#create the second data set of average of each variable for each activity and each subject
activity_level<-read.table("activity_labels.txt")
dataset1$activity<-factor(dataset1$activity, levels=activity_level[,1], labels=activity_level[,2])
dataset2<-aggregate(dataset1[3:68], by=list(dataset1$subject,dataset1$activity), FUN=mean)
names(dataset2)<-c("subject","activity",paste(names(data_var1)))
names(dataset2)
write.table(dataset2, "dataset2.txt", sep="\t", row.name=FALSE)

