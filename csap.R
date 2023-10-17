## Összerakáso

mind <- cbind(kuruc=coredata(kuruccsap.xts['1989/2019']),
              botan=coredata(csap.xts['1989/2019']))
mind <- as.data.frame(mind)
names(mind) <- c("kuruc","botan")
plot(mind$kuruc, mind$botan)

lm(botan ~ kuruc, data = mind)
