# Coursera *Getting and Cleaning Data* course project

This project serves the purpose of submiting the project for Coursera course *Getting and Cleaning Data*.

This repository contains the following files:

- `tidyActivitiesMean.txt`, which contains the tidy data set.
- `CodeBook.md`, the code book, which describes the contents of the resulting data and the cleaning process.
- `run_analysis.R`, the R script that was used to create the data set.

## Creating the data set <a name="creating-data-set"></a>

The R script `run_analysis.R` can be used to create the data set. It retrieves the source data set and transforms it to produce the final data set by implementing the following steps (see the Code book for details, as well as the comments in the script itself):

#### In order to create the tidy dataset, run the file `run_analysis.R`. The operations done in this file are described in the end of the CodeBook.md. The result of the cleaned data is store in a `tidyActivitiesMean.txt` file.

***** This script requires the `dplyr` package.
