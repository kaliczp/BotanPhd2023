library(readxl)
bot <- as.data.frame(read_excel("Teljes Botankert 1980-2023.xlsx"))
summary(bot)

## A csv-elmentett adatok beolvasása
botok <- read.csv2("Botan.csv")
botok[botok[,8] == "nyom", 8]  <- "0,05"
botok[botok[,8] == "ny", 8] <- "0,05"
botok[botok[,8] == "-", 8] <- ""
## Csak ellenőrzés
ttmp <- sub(",", ".", botok[!botok[,8] == "",8])
which(is.na(as.numeric(ttmp)))

botok[,8] <- as.numeric(sub(",", ".", botok[,8]))
