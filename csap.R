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
