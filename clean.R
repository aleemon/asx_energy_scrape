# Load libraries
#library(dplyr)
#library(readxl)
#library(stringr)
#library(lubridate)

# Read in data, with the same name that we specified in `flat.yml`
asx_trades <- read.delim("asx_trades.xls")
# It's a tab delimited file, not an xls file. Thanks cockheads.

# Add column names
colnames(asx_trades) <- c("time_AEDT", "code", "volume", "price_$_MWh")

# Add in a date column
asx_trades$date <-as.Date(Sys.Date())

# Should probably do some further processing here.



# Output data
write.csv(asx_trades, file = paste0("asx_trades_", Sys.Date(),"_output.csv")) # Not sure if this will work
#readr::write_csv(clean_data, "./output.csv")
