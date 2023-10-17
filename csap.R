## Összerakáso

mind <- cbind(kuruc=coredata(kuruccsap.xts['1989/2019']),
              botan=coredata(csap.xts['1989/2019']))
mind <- as.data.frame(mind)
names(mind) <- c("kuruc","botan")
plot(mind$kuruc, mind$botan)

lm(botan ~ kuruc, data = mind)

## Replaced with 0
mindnona <- mindnona
mindnona[is.na(mindnona$kuruc),"kuruc"] <- 0
mindnona[is.na(mindnona$botan),"botan"] <- 0
plot(botan ~ kuruc, data = mindnona)
lm(botan ~ kuruc, data = mindnona)

## Cumsum
plot(cumsum(mindnona$botan), type = "l", xaxs = "i", yaxs = "i")
lines(cumsum(mindnona$kuruc), col = 2)

## Idősor
mind.xts <- xts(mindnona, index(csap.xts['1989/2019']))


ev <- "1989-07-12/1990-01-01"

ev  <- "1993"
plot(cumsum(mind.xts$botan[ev]), type = "l", xaxs = "i", yaxs = "i", main = "")
lines(cumsum(mind.xts$kuruc[ev]), col = 2, lwd = 2)

png(height = 10, width = 10, unit = "cm", res = 300)
## itt futtatja a fentit
dev.off()
