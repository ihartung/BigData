library(fivethirtyeight)

#read in data. I am dropping all categorical columns for now
cmaq1 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Stephen/stephen-CMAQ.csv")[,-3]
credit2 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Stephen/stephen-Credit.csv")[,-c(1,8,9,10,11)]
employee3 <- read.table("https://raw.githubusercontent.com/ihartung/BigData/master/data/Stephen/stephen-Employee.txt",header=TRUE)[,-1]
ozone4 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Stephen/stephen-Ozone.csv")[,-c(1:3)]
bad.drivers5 <- fivethirtyeight::bad_drivers[,-1]
drinks6 <- fivethirtyeight::drinks[,-1]
drugs7 <- fivethirtyeight::drug_use[,-1]
senate8 <- fivethirtyeight::senate_polls[,-1]
mlb9 <- fivethirtyeight::mlb_as_play_talent[,-c(1:6)]
nba10 <- fivethirtyeight::nba_draft_2015[,-c(1:4)]

isaac1 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Isaac/Most-Recent-Cohorts-Scorecard-Elements.csv")[,-c(1:8)]
isaac1 <- apply(isaac1,2,as.numeric)
#isaac2 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Isaac/SFHFCLData.csv")
isaac3 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Isaac/ToothGrowth.csv")[,c(2,4)]
isaac4 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Isaac/aids.csv")[,c(2,3)]
isaac5 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Isaac/airquality.csv")[,-1]
isaac6 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Isaac/cphl162.csv")[-c(13,29,51,68:100),-1]
fun <- function(dat) {(sub(",","",dat))}
isaac6 <- apply(isaac6,2,fun)
isaac6 <- apply(isaac6,2,fun)
isaac6 <- apply(isaac6,2,as.numeric)
isaac7 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Isaac/downs.bc.csv")[,-1]
isaac8 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Isaac/faithful.csv")[,-1]
isaac9 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Isaac/manaus.csv")[,-1]
#isaac10 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Isaac/precip.csv")

#adrian2 <- read.csv("C:/Users/Owner/Downloads/data/data/complaints.csv")
adrian3 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Adrian/ProvincePopulation.csv")[,c(2:4)]
adrian4 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Adrian/SouthAfricaCrimeStats_v2.csv")[,-c(1:3)]
adrian5 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Adrian/alcohol.csv")[,-c(1:6,9:12,16:23)]
#adrian6 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Adrian/col.csv")
adrian7 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Adrian/county_facts.csv")[,-c(1:3)]
adrian8 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Adrian/ks.csv")[,c(2,9)]
adrian9 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Adrian/match.csv")[,-c(1:2,9:10)]
adrian10 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Adrian/youth.csv")[,-c(1,2)]

rylan1 <- read.csv("C:/Users/Owner/Downloads/data/data/inpatientCharges.csv")[,c(9:12)]
rylan1[,2] <- as.numeric(sub("\\$","",rylan1[,2]))
rylan1[,3] <- as.numeric(sub("\\$","",rylan1[,3]))
rylan1[,4] <- as.numeric(sub("\\$","",rylan1[,4]))
rylan2 <- read.csv("C:/Users/Owner/Downloads/data/data/Library_Usage.csv")[,c(3,4)]
rylan3 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Rylan/Iris.csv")[,c(2:5)]
rylan4 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Rylan/LifeCycleSavings.csv")
rylan5 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Rylan/QBStats_2016.csv")[,c(2:12)]
rylan5[,7] <- as.numeric(sub("t","",rylan5[,7]))
rylan6 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Rylan/athletes.csv")[,c(6,7,9,10,11)]
rylan7 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Rylan/cars.csv")
rylan8 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Rylan/m500_lap_time_rank_ver2.csv")[,-c(1:12,16,27)]
rylan9 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Rylan/primary_results.csv")[,c(7:8)]
rylan10 <- read.csv("https://raw.githubusercontent.com/ihartung/BigData/master/data/Rylan/production.csv")[,c(4:13)]

#put data into a list object so I can iterate through it
data <- list()
data[[1]] <- cmaq1
data[[2]] <- credit2
data[[3]] <- employee3
data[[4]] <- ozone4
data[[5]] <- bad.drivers5
data[[6]] <- drinks6
data[[7]] <- drugs7
data[[8]] <- senate8
data[[9]] <- mlb9
data[[10]] <- nba10
data[[11]] <- rylan1
data[[12]] <- rylan2
data[[13]] <- rylan3
data[[14]] <- rylan4
data[[15]] <- rylan5
data[[16]] <- rylan6
data[[17]] <- rylan7
data[[18]] <- rylan8
data[[19]] <- rylan9
data[[20]] <- rylan10
data[[21]] <- adrian3
data[[22]] <- adrian4
data[[23]] <- adrian5
data[[24]] <- adrian7
data[[25]] <- adrian8
data[[26]] <- adrian9
data[[27]] <- adrian10
data[[28]] <- isaac1
data[[29]] <- isaac3
data[[30]] <- isaac4
data[[31]] <- isaac5
data[[32]] <- isaac6
data[[33]] <- isaac7
data[[34]] <- isaac8
data[[35]] <- isaac9

n <- length(data)
#setup results matrix
results <- matrix(0,nrow=n,ncol=4)
colnames(results) <- c("Variance","Correlation","Old Var","Old Cor")

#replace n/a with mean of that column
for(i in 1:n) {
  dat <- data[[i]]
  for(j in 1:ncol(dat)) {
    dat[is.na(dat[,j]),j] <- mean(dat[,j],na.rm = TRUE)
  }
  data[[i]] <- dat
}

#get variation. note the data is scaled
for(i in 1:n) {
  results[i,3] <- det(cov(scale(data[[i]])))
  results[i,1] <- sum(apply(data[[i]],2,var))/ncol(data[[i]])
}

#same for correlation
for(i in 1:n) {
  results[i,4] <- 1/det(cor(scale(data[[i]])))
  results[i,2] <- sum(abs(cor(data[[i]]))[upper.tri(cor(data[[i]]))])*(2/(ncol(data[[i]])-1))
}

results <- results[-c(11,19:21,24,25,28,32,33),]

plot(results[,1],results[,2])
plot(results[,3],results[,4])
