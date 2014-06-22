===================================================================================
Subject and Activity means for Human activity Recognition Using Smartphones Dataset
===================================================================================

The original Data comes a project to predict human activity based on accelerometer and gyroscope signals from an smartphone.

The project monitored manually 30 subjects and six different kinds of activities as the gyroscope and the accelerometer were registrin different kinds of signals

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The description of the project is avaiable in

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data presented in this data set has been transformed significally from the original:

- The data has been merged from a train and a test separated data set

- It contains only the mean and the standard deviation signals. Plus, each observation comes from aggregating each subject and activity using means.

- The signals are the triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration triaxial Angular velocity from the gyroscope. 

- Activity and Subject labels have been also added as variables (columns) in the data set. Originally they were placed in different files.

All these transformations have been carried out using R software


HOW TO READ THE DATA IN R
=========================

The data was created with the write.table R function using the "," character as separactor (csv style)

The data can be read using read.csv function


The Repo contains the following files
======================================

- run_analysis.R: R script containing all the transformations carried out in the data in order to obtain the final data set presented in the dataset.csv

- dataset.csv: the transformed data set with the features mentioned above

- CodeBook.md: a codebook descibing the variables, the data and the transformations performed
