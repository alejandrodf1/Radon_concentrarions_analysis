install.packages('ggplot2')
library(ggplot2)

#getting the data
library(readr)
radon16 <- read_delim("C:/Users/Alejandro/OneDrive - yachaytech.edu.ec/Octavo semestre/Radiciones no ionizantes/projec/radon18.csv", 
                        delim = ";", escape_double = FALSE, col_types = cols(day = col_datetime(format = "%d/%m/%Y")), 
                        trim_ws = TRUE)
#View(radon11_n)
names(radon16)

#pairs(radon16)

x1<-radon11_n$hour
x2<-radon11_n$`Temperatura_(C)`
x2
x3<-as.factor(radon16$clima)
#x3
x4<-as.factor(radon16$age)
#x4
x5<-as.factor(radon16$ventilacion)
#x5
x6<-radon11_n$day_model
X<- cbind(x1,x2,x3,x4,x5)

#X
y1<-radon16$`effective_dose_[mSv/y]`

#y1
regression1 <- lm(y1~x1+x2+x3+x4+x5+x6)
summary(regression1)


#regression1 <- lm(y1~log(X) , data = radon16)
#summary(regression1)
