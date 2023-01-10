# Load libraries
library(dplyr)
library(readxl)
library(stringr)
library(lubridate)

# Read in data, with the same name that we specified in `flat.yml`
asx_trades <- readxl::read_excel("./asx_trades.xls")

# Add column names
colnames(asx_trades) <- c("time_AEDT", "code", "volume", "price_$_MWh")

# Should probably do some further processing here.

# All the processing!
#clean_data <- raw_data %>%
#  mutate(Zipcode = as.character(Zipcode),
#         Year = lubridate::year(Date),
#         Sex = ifelse(is.na(Sex), 'Unknown', Sex))



# Output data
readr::write_csv(clean_data, "./output.csv")
