## All temp
plot(hom.xts, ylim = c(-30,40))

## Max only
plot(hom.xts[,1]) # , ylim = c(-30,40))

## Min only
plot(hom.xts[,2]) # , ylim = c(-30,40))

plot(hom.xts['1998'])

plot(hom.xts['1998-01'])

plot(hom.xts['1998-01-26/1998-01-31'])
