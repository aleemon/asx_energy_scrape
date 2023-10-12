# Load libraries
#library(dplyr)
#library(readxl)
#library(stringr)
#library(lubridate)

# Read in data, with the same name that we specified in `flat.yml`
new_trades <- read.delim("asx_trades.xls")

colnames(new_trades) <- c("time_AEDT", "code", "volume", "price_$_MWh")

asx_trades$date <-as.Date(Sys.Date())

#~ Add in the longer form descriptions of the commodity codes

# Output new data
  #~ Move this a different folder
write.csv(asx_trades, file = paste0("asx_trades_", Sys.Date(),"_output.csv")) # Not sure if this will work

write.csv(asx_trades, file = paste0("./daily_files/asx_trades_", Sys.Date(),"_output.csv")) # Not sure if this will work



perpetual_trades <- read.csv("./perpetual_file/perpetual_trades.csv")

#perpetual_trades <- rbind(pertetual_trades, new_trades)

#write.csv(perpetual_trades, file = "./perpetual_file/perpetual_trades.csv")
