library(xts)
hom.xts <- xts(x = bot[,2:4], order.by = bot[,1])

summary(bot[,8])

csap.xts <- xts(x = botok[,8] , order.by = as.Date(gsub("\\.","-",botok[,1])))
plot(csap.xts, type = "h")

kuruccsap.xts <- xts(x = kuruc[,2], order.by = as.Date(gsub("\\.","-",kuruc[,1])))

plot(kuruccsap.xts, type = "h")
