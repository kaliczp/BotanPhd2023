## Row number 
which(hom.xts[,1] > 50)

## Number from above
hom.xts[12067,1]

## Numbers from above
hom.xts[c(6390, 7369, 7681, 7805, 7834), ]

## Hibák maximum:
1988-09-09
2013-03-02
2013-03-03
1997-08-16    263.0     15.2     139.10
2000-04-21    262.0     13.2     137.60
2001-07-01    285.8     14.6     150.20
2001-07-30    292.0     17.7     154.85

### Minimumok
which(hom.xts[,2] > 50)

hom.xts[c(3065L, 6367L, 8555L, 13622L), 2]

1988-07-09   1505.0
1997-07-24    152.0
2003-07-21    155.0
2017-06-04    115.2

## Maximum kisebb-e, mint a minimum, ha igen hiba!
plot(hom.xts[,1] < hom.xts[,2])
