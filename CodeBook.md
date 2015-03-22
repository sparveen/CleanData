#CodeBook - summary.txt
##Data source

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

README.txt

Brief abstract from README.txt Human activity Recognition Using Smartphones Dataset

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

Summary.txt
The tidy data set called summary.txt has the following columns. For each combination of Subject and Activity_Id, it captures the avg values of mean and standard deveiations

"Subject"
"Activity_Id"
"Activity"
"tBodyAcc-mean()-X" 
"tBodyAcc-mean()-Y" 
"tBodyAcc-mean()-Z" 
"tBodyAcc-std()-X" 
"tBodyAcc-std()-Y" 
"tBodyAcc-std()-Z" 
"tBodyAcc-mad()-X" 
"tBodyAcc-mad()-Y" 
"tBodyAcc-mad()-Z" 
"tBodyAcc-max()-X" 
"tBodyAcc-max()-Y" 
"tBodyAcc-max()-Z" 
"tBodyAcc-min()-X"
"tBodyAcc-min()-Y"
"tBodyAcc-min()-Z" 
"tBodyAcc-sma()" 
"tBodyAcc-energy()-X" 
"tBodyAcc-energy()-Y" 
"tBodyAcc-energy()-Z" 
"tBodyAcc-iqr()-X" 
"tBodyAcc-iqr()-Y" 
"tBodyAcc-iqr()-Z" 
"tBodyAcc-entropy()-X" 
"tBodyAcc-entropy()-Y" 
"tBodyAcc-entropy()-Z" 
"tBodyAcc-arCoeff()-X,1" 
"tBodyAcc-arCoeff()-X,2" 
"tBodyAcc-arCoeff()-X,3" 
"tBodyAcc-arCoeff()-X,4" 
"tBodyAcc-arCoeff()-Y,1" 
"tBodyAcc-arCoeff()-Y,2" 
"tBodyAcc-arCoeff()-Y,3" 
"tBodyAcc-arCoeff()-Y,4" 
"tBodyAcc-arCoeff()-Z,1" 
"tBodyAcc-arCoeff()-Z,2" 
"tBodyAcc-arCoeff()-Z,3" 
"tBodyAcc-arCoeff()-Z,4" 
"tBodyAcc-correlation()-X,Y" 
"tBodyAcc-correlation()-X,Z" 
"tBodyAcc-correlation()-Y,Z" 
"tGravityAcc-mean()-X" 
"tGravityAcc-mean()-Y" 
"tGravityAcc-mean()-Z" 
"tGravityAcc-std()-X" 
"tGravityAcc-std()-Y" 
"tGravityAcc-std()-Z" 
"tGravityAcc-mad()-X" 
"tGravityAcc-mad()-Y" 
"tGravityAcc-mad()-Z" 
"tGravityAcc-max()-X" 
"tGravityAcc-max()-Y" 
"tGravityAcc-max()-Z" 
"tGravityAcc-min()-X" 
"tGravityAcc-min()-Y" 
"tGravityAcc-min()-Z" 
"tGravityAcc-sma()" 
"tGravityAcc-energy()-X" 
"tGravityAcc-energy()-Y" 
"tGravityAcc-energy()-Z" 
"tGravityAcc-iqr()-X" 
"tGravityAcc-iqr()-Y" 
"tGravityAcc-iqr()-Z" 
"tGravityAcc-entropy()-X" 
"tGravityAcc-entropy()-Y" 
"tGravityAcc-entropy()-Z"
