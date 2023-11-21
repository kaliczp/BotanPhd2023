## FAI = 100 * t_átlag(VII-VIII) / P(V + VI + 2*VII + VIII)
## Yearly

## Input xts time series with "temp" and "prec" columns

## FAI = 100 * t_átlag(VII-VIII) / (sum(P_(V–VIII)) + P_(VII))

FAI <- function(x) {
    ## Test index is.Date
    ## Temperature preparation
    temp.monthly.mean <- apply.monthly(x$temp, mean)
    ## select july aug
    july.index <- seq(7, length(temp.monthly.mean), by = 12)
    july.mean <- temp.monthly.mean[july.index]
    aug.mean <- temp.monthly.mean[july.index + 1]
    temp.df <- data.frame(July = july.mean, Aug = aug.mean)
    temp7.8 <- rowMeans(temp.df)
    ## ## Precipitation preparation
    prec.monthly.sum <- apply.monthly(x$prec, sum)
    prec.df <- data.frame(May = prec.monthly.sum[july.index - 2],
                          Jun = prec.monthly.sum[july.index - 1],
                          July = prec.monthly.sum[july.index],
                          July2 = prec.monthly.sum[july.index],
                          Aug = prec.monthly.sum[july.index + 1]
                          )
    prec.sum <- rowSums(prec.df)
    ## FAI
    100 * (temp7.8 / prec.sum)
}

Krcz.FAI <- data.frame(Year = 1870:2021, FAI(Krcz.xts))
plot(Krcz.FAI, type = "l")
write.table(Krcz.FAI, "KrczFAI.csv", sep = ";", dec = ",")
