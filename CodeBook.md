## Gyroscope and accelerometer means and standar deviations dataset

The orginial data from the project monitored manually 30 subjects and six different kinds of activities as the gyroscope and the accelerometer were registering different kinds of signals

The data set presented in dataset.txt consists in a tidy data set with 180 records and 68 columns extracted from 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


### Units of measure

The variables used in this data set are the means and standar deviations related measures for each subject and activity. The rest of the variables were dropped

The original observations have been aggregated for each Subject and Activity using means

The original units of measure of the original variables can be read in the README.txt file from the original data set

"...Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."


### Variables in the data set

There are five types of variables


* Subject: labeled from 1 to 30

* Activity: one of Walking, Walking upstairs, Walking downstairs, Sitting, Standing, Laying

* Three Axial Raw signals: These include body acceleration and gravity acceleration signals

* Jerk signals: linear body linear acceleration and angular velocity derived in time

* Euclidean norm from Jerk signals

* Fast Fourier Transform (FFT) applied to some of the previous signals


The names of the variables are listed below

* "Subject"                                       
* "Activity"                                      
* "Body Acceleration.mean X Axis"                 
* "Body Acceleration.mean Y Axis"                 
* "Body Acceleration.mean Z Axis"                 
* "Body Acceleration.std X Axis"                  
* "Body Acceleration.std Y Axis"                  
* "Body Acceleration.std Z Axis"                  
* "Gravity Acceleration.mean X Axis"              
* "Gravity Acceleration.mean Y Axis"              
* "Gravity Acceleration.mean Z Axis"              
* "Gravity Acceleration.std X Axis"               
* "Gravity Acceleration.std Y Axis"               
* "Gravity Acceleration.std Z Axis"               
* "Body Acceleration Jerk.mean X Axis"            
* "Body Acceleration Jerk.mean Y Axis"            
* "Body Acceleration Jerk.mean Z Axis"            
* "Body Acceleration Jerk.std X Axis"             
* "Body Acceleration Jerk.std Y Axis"             
* "Body Acceleration Jerk.std Z Axis"             
* "Body Gyroscope.mean X Axis"                    
* "Body Gyroscope.mean Y Axis"                    
* "Body Gyroscope.mean Z Axis"                    
* "Body Gyroscope.std X Axis"                     
* "Body Gyroscope.std Y Axis"                     
* "Body Gyroscope.std Z Axis"                     
* "Body Gyroscope Jerk.mean X Axis"               
* "Body Gyroscope Jerk.mean Y Axis"               
* "Body Gyroscope Jerk.mean Z Axis"               
* "Body Gyroscope Jerk.std X Axis"                
* "Body Gyroscope Jerk.std Y Axis"                
* "Body Gyroscope Jerk.std Z Axis"                
* "Body Acceleration Euclidean norm.mean"         
* "Body Acceleration Euclidean norm.std"          
* "Gravity Acceleration Euclidean norm.mean"      
* "Gravity Acceleration Euclidean norm.std"       
* "Body Acceleration Jerk Euclidean norm.mean"    
* "Body Acceleration Jerk Euclidean norm.std"     
* "Body Gyroscope Euclidean norm.mean"            
* "Body Gyroscope Euclidean norm.std"             
* "Body Gyroscope Jerk Euclidean norm.mean"       
* "Body Gyroscope Jerk Euclidean norm.std"        
* "FTT Body Acceleration.mean X Axis"             
* "FTT Body Acceleration.mean Y Axis"             
* "FTT Body Acceleration.mean Z Axis"             
* "FTT Body Acceleration.std X Axis"              
* "FTT Body Acceleration.std Y Axis"              
* "FTT Body Acceleration.std Z Axis"              
* "FTT Body Acceleration Jerk.mean X Axis"        
* "FTT Body Acceleration Jerk.mean Y Axis"        
* "FTT Body Acceleration Jerk.mean Z Axis"        
* "FTT Body Acceleration Jerk.std X Axis"         
* "FTT Body Acceleration Jerk.std Y Axis"         
* "FTT Body Acceleration Jerk.std Z Axis"         
* "FTT Body Gyroscope.mean X Axis"                
* "FTT Body Gyroscope.mean Y Axis"                
* "FTT Body Gyroscope.mean Z Axis"                
* "FTT Body Gyroscope.std X Axis"                 
* "FTT Body Gyroscope.std Y Axis"                 
* "FTT Body Gyroscope.std Z Axis"                 
* "FTT Body Acceleration Euclidean norm.mean"     
* "FTT Body Acceleration Euclidean norm.std"      
* "FTT Body Acceleration Jerk Euclidean norm.mean"
* "FTT Body Acceleration Jerk Euclidean norm.std" 
* "FTT Body Gyroscope Euclidean norm.mean"        
* "FTT Body Gyroscope Euclidean norm.std"         
* "FTT Body Gyroscope Jerk Euclidean norm.mean"   
* "FTT Body Gyroscope Jerk Euclidean norm.std"


### Transformations using R software

Several transformations have been performed in order to obtain the final data set. subsetting and reshaping (using reshape2 package) has been performed. 

Concretely, the means for each Subject and activity were computing using melt and dcast functions

Train and test original data sets were placed in separated files. They were combined using rbind function

mean and sd variables were filtered using regular expressions in R. The variables names were formatting to a easily reading format using the same procedure