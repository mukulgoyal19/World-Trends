
Stats <- read.csv(file.choose())
Stats

#--------Exploring Data

nrow(Stats)
ncol(Stats)

head(Stats) #top 6 rows
head(Stats,n=11)
tail(Stats)  #bottom 6 rows
tail(Stats,n=7)

str(Stats)
#runif(Stats)
#rnorm(Stats)
summary(Stats)


#------using $ sign

Stats
head(Stats)
Stats[3,3]
Stats[3,"Birth.rate"]
Stats["Angola",3]
#$ is used exract data 
Stats$Internet.users
Stats$Internet.users[2]
levels(Stats$Income.Group)

#--------asic operatons on Data Frame

Stats[1:10,] #subsetting
#remember how the [] works

is.data.frame(Stats[1,])
is.data.frame(Stats[,1])
is.data.frame(Stats[,1,drop=F])

#multiply cols
head(Stats)
Stats$Birth.rate*Stats$Internet.users
Stats$Birth.rate + Stats$Internet.users


#add cols
head(Stats)
Stats$MyCalc <- Stats$Birth.rate*Stats$Internet.users
#test knowledge
Stats$xyz <- 1:5
head(Stats, n=12)


#remove a col
Stats$MyCalc <- NULL
Stats$xyz <- NULL
Stats


#----------Filtering data frames

head(Stats)
filter <- Stats$Internet.users <2
Stats[filter,]
Stats[Stats$Birth.rate>40,]

Stats[Stats$Birth.rate>40 & Stats$Internet.users <2,]
Stats[Stats$Income.Group=="High income",]

#question: try finding out all the information from data frame about malta
Stats[Stats$Country.Name=="Malta",]


#---------------Intro to qplot
library(ggplot2)

qplot(data=Stats,x=Internet.users)
qplot(data=Stats,x=Income.Group, y=Birth.rate, size=I(3))

qplot(data=Stats,x=Income.Group, y=Birth.rate, size=I(3), colour=I("blue"))
qplot(data=Stats,x=Income.Group, y=Birth.rate, geom = "boxplot")

#-----------------Visualizing what we need

qplot(data = Stats, x=Internet.users, y=Birth.rate)
qplot(data = Stats, x=Internet.users, y=Birth.rate, size=I(4))
qplot(data = Stats, x=Internet.users, y=Birth.rate, size=I(4), colour=I("red"))
qplot(data = Stats, x=Internet.users, y=Birth.rate, size=I(4), colour=Income.Group)




#-----------------creating data frames

mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
head(mydf)
colnames(mydf) <- c("Country","Code","Region")
head(mydf)
# shortcut to put name col names
rm(mydf)

mydf <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset, Region=Regions_2012_Dataset)
head(mydf)

tail(mydf)
summary(mydf)


#------------Merging DF

head(Stats)
tail(Stats)
merged <- merge(Stats, mydf, by.x="Country.Code", by.y= "Code")
merged

merged$Country <- NULL
merged
head(merged)

#----------------- visualising with new split

qplot(data = merged, x=Internet.users, y=Birth.rate)
qplot(data = merged, x=Internet.users, y=Birth.rate, colour= Region)

#1.Shape
qplot(data = merged, x=Internet.users, y=Birth.rate, colour= Region, size=I(4),shape=I(15))

#2.Transparency
qplot(data = merged, x=Internet.users, y=Birth.rate, colour= Region, size=I(4),shape=I(15), alpha=I(0.6))

#3. title
qplot(data = merged, x=Internet.users, y=Birth.rate, colour= Region, size=I(4),shape=I(15), alpha=I(0.6), main="Birth Rate vs Internet Users")






