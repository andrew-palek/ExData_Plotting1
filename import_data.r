#import_Data.R
## This function imports the household_Power_Consumption.txt data into R for analysis and plotting

library(tidyverse) #load tidyverse library to make easier
library(lubridate) #makes it easier to work with the date
bp<-('./JHU/EDA/wk1/project') # set base path
all_data<-read_delim(paste(bp,'/household_power_consumption.txt',sep=""),';',quote = "\"", escape_backslash = FALSE,             escape_double = TRUE, col_names = TRUE, col_types = NULL,locale = default_locale(), na = c("", "NA","?"), quoted_na = TRUE, comment = "", trim_ws = FALSE, skip = 0, n_max = Inf, guess_max = min(1000, 2000000), progress = show_progress(), skip_empty_rows = TRUE) #read the data file into all_data specifies column formats

#format the Date column
all_data$Date<-dmy(all_data$Date) #getting the date in the proper format

feb_data<-filter(all_data,all_data$Date>=dmy("01/02/2007")) # First filter to get overall date range
feb_data2<-filter(feb_data,feb_data$Date<dmy("01/03/2007"))# second filter to get February 2007 date range
feb_data2=drop_na(feb_data2) # Get rid of all rows with NA
feb_data2$day<-weekdays(feb_data2$Date,abbreviate = TRUE) # adding weekday abbrivation to dataset
day_data<-filter(feb_data2,(feb_data2$day=="Thu" | feb_data2$day=="Fri")) # filtering data to only those days which may be applicable

## creating group
gp1<-filter(day_data,(day_data$Date==dmy("01/02/2007") | day_data$Date==dmy("02/02/2007")))




