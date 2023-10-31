## Import raw
rawKrczt <- read.csv2("t_h_sopron_18702021.csv", dec = ".")[,1:2]
rawKrczPrec <- read.csv2("r_h_sopron_18702021.csv", dec = ".")[,1:2]

## Create dates
ltdates <- seq.Date(as.Date("1870-01-01"), as.Date("2021-12-31"), by = "day")
## Create time-series
library(xts)
Krcz.xts <- xts(cbind(temp = rawKrczt[,2], prec = rawKrczPrec[,2]), ltdates)

## Yearly means and sums
KrczYear.xts <- cbind(apply.yearly(Krcz.xts$temp, mean),
                      apply.yearly(Krcz.xts$prec, sum))
## Export csv
write.zoo(KrczYear.xts, "KrczYear.csv", sep = ";", dec = ",")
