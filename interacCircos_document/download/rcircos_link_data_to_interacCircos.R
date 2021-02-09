library(RCircos)

# Load link data from RCircos
data(RCircos.Link.Data)
linkData<-RCircos.Link.Data

# Rename the chromosome, from chrNum to Num
linkData$Chromosome<-gsub('chr', '', linkData$Chromosome)
linkData$Chromosome.1<-gsub('chr', '', linkData$Chromosome.1)
colnames(linkData)<-c("g1chr","g1start","g1end","g2chr","g2start","g2end")

save(linkData,file = "linkData.rda")
