# Load libraries
library(dplyr)
library(readxl)
library(stringr)
library(lubridate)

# Read in data, with the same name that we specified in `flat.yml`
asx_trades <- readxl::read_excel("./asx_trades.xls")

# Add column names
colnames(asx_trades) <- c("time_AEDT", "code", "volume", "price_$_MWh")

# Add in a date column
asx_trades$date <-as.Date(Sys.Date())

# Should probably do some further processing here.



# Output data
readr::write_csv(asx_trades, paste0("asx_trades_", Sys.Date(),"./output.csv")) # Not sure if this will work
#readr::write_csv(clean_data, "./output.csv")
