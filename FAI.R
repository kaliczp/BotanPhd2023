## FAI = 100 * t_átlag(VII-VIII) / P(V + VI + 2*VII + VIII)
## Yearly

## Input xts time series with "temp" and "prec" columns

## FAI = 100 * t_átlag(VII-VIII) / (sum(P_(V–VIII)) + P_(VII))

FAI <- function(x) {
    ## Test index is.Date
    
    ## Temperature preparation
    temp.index <- 
    tempwindow <- period.apply()
    ## select even windwos
    temp7.8 <- tempwindow[]
    ## Precipitation preparation
    prec.sum.raw
    prec.sum.summer <- prec.sum.raw
    ## FAI
    100 * temp / prec.sum.summer
}

FAI(Krcz.xts)
