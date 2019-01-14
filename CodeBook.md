# Code book

### Sections
- [Data](#data): Describes the structure of the data set.
- [Variables](#variables): Defenition of data variables.
- [Mutations](#mutations): Mutations preformed in the data in order to obtain tidy data set.

### Data <a name="data"></a>

The clean data is saved in `tidyActivitiesMean.txt` file, containing the names of the columns in the first row (variables) and respective values in the following lines.

### Variables <a name="variables"></a>
Each observation contains 79 variable values.

#### Identifiers <a name="identifiers"></a>

- `subject`

	Subject identifier, integer, ranges from 1 to 30.

- `activity`

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

- Average time body acceleration in the X, Y and Z directions:

	- `timeBodyAccelerometerMeanX`
	- `timeBodyAccelerometerMeanY`
	- `timeBodyAccelerometerMeanZ`

- Standard deviation of the time body acceleration in the X, Y and Z directions:

	- `timeBodyAccelerometerStandardDeviationX`
	- `timeBodyAccelerometerStandardDeviationY`
	- `timeBodyAccelerometerStandardDeviationZ`

- Average time gravity acceleration in the X, Y and Z directions:

	- `timeGravityAccelerometerMeanX`
	- `timeGravityAccelerometerMeanY`
	- `timeGravityAccelerometerMeanZ`

- Standard deviation of the time gravity acceleration in the X, Y and Z directions:

	- `timeGravityAccelerometerStandardDeviationX`
	- `timeGravityAccelerometerStandardDeviationY`
	- `timeGravityAccelerometerStandardDeviationZ`

- Average time body acceleration jerk in the X, Y and Z directions:

	- `timeBodyAccelerometerJerkMeanX`
	- `timeBodyAccelerometerJerkMeanY`
	- `timeBodyAccelerometerJerkMeanZ`

- Standard deviation of the time-domain body acceleration jerk in the X, Y and Z directions:

	- `timeBodyAccelerometerJerkStandardDeviationX`
	- `timeBodyAccelerometerJerkStandardDeviationY`
	- `timeBodyAccelerometerJerkStandardDeviationZ`

- Average time body angular velocity in the X, Y and Z directions:

	- `timeBodyGyroscopeMeanX`
	- `timeBodyGyroscopeMeanY`
	- `timeBodyGyroscopeMeanZ`

- Standard deviation of the time body angular velocity in the X, Y and Z directions:

	- `timeBodyGyroscopeStandardDeviationX`
	- `timeBodyGyroscopeStandardDeviationY`
	- `timeBodyGyroscopeStandardDeviationZ`

- Average time-domain body angular velocity jerk in the X, Y and Z directions:

	- `timeBodyGyroscopeJerkMeanX`
	- `timeBodyGyroscopeJerkMeanY`
	- `timeBodyGyroscopeJerkMeanZ`

- Standard deviation of the domain body angular velocity jerk in the X, Y and Z directions:

	- `timeBodyGyroscopeJerkStandardDeviationX`
	- `timeBodyGyroscopeJerkStandardDeviationY`
	- `timeBodyGyroscopeJerkStandardDeviationZ`

- Average and standard deviation of the time magnitude of body acceleration:

	- `timeBodyAccelerometerMagnitudeMean`
	- `timeBodyAccelerometerMagnitudeStandardDeviation`

- Average and standard deviation of the time magnitude of gravity acceleration:

	- `timeGravityAccelerometerMagnitudeMean`
	- `timeGravityAccelerometerMagnitudeStandardDeviation`

- Average and standard deviation of the time magnitude of body acceleration jerk:

	- `timeBodyAccelerometerJerkMagnitudeMean`
	- `timeBodyAccelerometerJerkMagnitudeStandardDeviation`

- Average and standard deviation of the time magnitude of body angular velocity:

	- `timeBodyGyroscopeMagnitudeMean`
	- `timeBodyGyroscopeMagnitudeStandardDeviation`

- Average and standard deviation of the time magnitude of body angular velocity jerk:

	- `timeBodyGyroscopeJerkMagnitudeMean`
	- `timeBodyGyroscopeJerkMagnitudeStandardDeviation`

- Average frequency body acceleration in the X, Y and Z directions:

	- `frequencyBodyAccelerometerMeanX`
	- `frequencyBodyAccelerometerMeanY`
	- `frequencyBodyAccelerometerMeanZ`

- Standard deviation of the frequency body acceleration in the X, Y and Z directions:

	- `frequencyBodyAccelerometerStandardDeviationX`
	- `frequencyBodyAccelerometerStandardDeviationY`
	- `frequencyBodyAccelerometerStandardDeviationZ`

- Weighted average of the frequency components of the frequency body acceleration in the X, Y and Z directions:

	- `frequencyBodyAccelerometerMeanFrequencyX`
	- `frequencyBodyAccelerometerMeanFrequencyY`
	- `frequencyBodyAccelerometerMeanFrequencyZ`

- Average frequency body acceleration jerk in the X, Y and Z directions:

	- `frequencyBodyAccelerometerJerkMeanX`
	- `frequencyBodyAccelerometerJerkMeanY`
	- `frequencyBodyAccelerometerJerkMeanZ`

- Standard deviation of the frequency body acceleration jerk in the X, Y and Z directions:

	- `frequencyBodyAccelerometerJerkStandardDeviationX`
	- `frequencyBodyAccelerometerJerkStandardDeviationY`
	- `frequencyBodyAccelerometerJerkStandardDeviationZ`

- Weighted average of the frequency components of the frequency body acceleration jerk in the X, Y and Z directions:

	- `frequencyBodyAccelerometerJerkMeanFrequencyX`
	- `frequencyBodyAccelerometerJerkMeanFrequencyY`
	- `frequencyBodyAccelerometerJerkMeanFrequencyZ`

- Average frequency body angular velocity in the X, Y and Z directions:

	- `frequencyBodyGyroscopeMeanX`
	- `frequencyBodyGyroscopeMeanY`
	- `frequencyBodyGyroscopeMeanZ`

- Standard deviation of the frequency body angular velocity in the X, Y and Z directions:

	- `frequencyBodyGyroscopeStandardDeviationX`
	- `frequencyBodyGyroscopeStandardDeviationY`
	- `frequencyBodyGyroscopeStandardDeviationZ`

- Weighted average of the frequency components of the frequency body angular velocity in the X, Y and Z directions:

	- `frequencyBodyGyroscopeMeanFrequencyX`
	- `frequencyBodyGyroscopeMeanFrequencyY`
	- `frequencyBodyGyroscopeMeanFrequencyZ`

- Average, standard deviation, and weighted average of the frequency components of the frequency magnitude of body acceleration:

	- `frequencyBodyAccelerometerMagnitudeMean`
	- `frequencyBodyAccelerometerMagnitudeStandardDeviation`
	- `frequencyBodyAccelerometerMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency magnitude of body acceleration jerk:

	- `frequencyBodyAccelerometerJerkMagnitudeMean`
	- `frequencyBodyAccelerometerJerkMagnitudeStandardDeviation`
	- `frequencyBodyAccelerometerJerkMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency magnitude of body angular velocity:

	- `frequencyBodyGyroscopeMagnitudeMean`
	- `frequencyBodyGyroscopeMagnitudeStandardDeviation`
	- `frequencyBodyGyroscopeMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency magnitude of body angular velocity jerk:

	- `frequencyBodyGyroscopeJerkMagnitudeMean`
	- `frequencyBodyGyroscopeJerkMagnitudeStandardDeviation`
	- `frequencyBodyGyroscopeJerkMagnitudeMeanFrequency`

### Mutations <a name="transformations"></a>

- The training and test sets were merged to create one data set.
- The measurements on the mean and standard deviation (i.e. signals containing the strings `mean` and `std`) were extracted for each measurement, and the others were discarded.
- The activity identifiers were replaced with descriptive activity names.
- The variable names were replaced with descriptive variable names (e.g. `tBodyAcc-mean()-X` was expanded to `timeBodyAccelerometerMeanX`), using the following set of rules:
	- Special characters (i.e. `(`, `)`, and `-`) were removed
	- The initial `f` and `t` were expanded to `frequency` and `time` respectively.
	- `Acc`, `Gyro`, `Mag`, `Freq`, `mean`, and `std` were replaced with `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean`, and `StandardDeviation` respectively.
	- Replaced `BodyBody` with `Body`.
- From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the `run_analysis.R` R script.