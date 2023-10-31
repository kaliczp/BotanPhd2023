## Import raw
rawKrczt <- read.csv2("t_h_sopron_18702021.csv", dec = ".")[,1:2]
rawKrczPrec <- read.csv2("r_h_sopron_18702021.csv", dec = ".")[,1:2]

## Create dates
ltdates <- seq.Date(as.Date("1870-01-01"), as.Date("2021-12-31"), by = "day")
## Create time-series
library(xts)
Krcz.xts <- xts(cbind(temp = rawKrczt[,2], prec = rawKrczPrec[,2]), ltdates)

