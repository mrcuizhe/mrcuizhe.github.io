library(RCircos)

# Load scatter data from RCircos
data(RCircos.Scatter.Data)
scatterData<-RCircos.Scatter.Data

# Rename the chromosome, from chrNum to Num
scatterData$chromosome<-gsub('chr', '', scatterData[,1])

# Different from RCircos, interacCircos require users to manually assign color for each point
scatterData<-scatterData[,c(1,2,5,3)]
colnames(scatterData)<-c("chr","pos","value","color")
scatterData$color<-"black"
scatterData[which(scatterData$value>=1),]$color<-"red"
scatterData[which(scatterData$value<=-1),]$color<-"blue"

save(scatterData,file = "scatterData.rda")
