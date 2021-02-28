library(RCircos)

# Load scatter data from RCircos
data(RCircos.Histogram.Data)
histogramData<-RCircos.Histogram.Data

# Rename the chromosome, from chrNum to Num
histogramData$Chromosome<-gsub('chr', '', histogramData[,1])
colnames(histogramData)<-c("chr","start","end","value")

save(histogramData,file = "histogramData.rda")
