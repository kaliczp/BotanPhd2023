## Import
library(readxl)
library(xts)
rawBotan <- as.data.frame(read_excel("LiliBotanYear.xlsx", sheet = 2))
Botan30.60 <- xts(data.frame(temp = rawBotan[,2], prec = rawBotan[,6]), as.Date(rawBotan[,1]))

pdf("Botan30FAI.pdf", width = 2 * 7)
plot(1930:1960, FAI(Botan30.60), type = "l", xlab = "", ylab = "FAI", xaxs = "i")
axis(2,at = c(4.75,6,7.25,8.5), tck = 1, lab = FALSE, col = "lightgray")
lines(1930:1960,filter(FAI(Botan30.60),c(1/3,1/3,1/3)), lwd =2, col = 2)
lines(1930:1960,filter(FAI(Botan30.60),c(1/5,1/5,1/5,1/5,1/5)), lwd =2, col = 3)
lines(1930:1960,filter(FAI(Botan30.60),rep(1/7,7)), lwd = 3, col = 4)
box()

Botan89.19 <- xts(data.frame(temp = rawBotan[-nrow(rawBotan),8],
                             prec = rawBotan[-nrow(rawBotan),12]),
                  order.by = as.Date(rawBotan[-nrow(rawBotan),7]))

pdf("Botan89FAI.pdf", width = 2 * 7)
plot(1989:2019, FAI(Botan89.19), type = "l", xlab = "", ylab = "FAI", xaxs = "i")
axis(2,at = c(4.75,6,7.25,8.5), tck = 1, lab = FALSE, col = "lightgray")
lines(1989:2019,filter(FAI(Botan89.19),c(1/3,1/3,1/3)), lwd =2, col = 2)
lines(1989:2019,filter(FAI(Botan89.19),c(1/5,1/5,1/5,1/5,1/5)), lwd =2, col = 3)
lines(1989:2019,filter(FAI(Botan89.19),rep(1/7,7)), lwd = 3, col = 4)
box()
