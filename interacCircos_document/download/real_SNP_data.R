library(interacCircos)
library(stringr)

SNP_data<-read.table("snpExample_random_from_1000G.vcf",sep = "\t")
SNP_data<-SNP_data[,c(1,2,8)]
colnames(SNP_data)<-c("chr","pos","value")
SNP_data$value<-as.integer(str_split_fixed(str_split_fixed(SNP_data$value, ";", 2)[,1],"=",2)[,2])

SNP_track<-CircosSnp('SNP01', minRadius =150, maxRadius = 190, data = SNP_data,fillColor= "#9ACD32",
                                      circleSize= 2, animationDisplay =TRUE,animationTime= 2000,animationDelay= 0,
                                      animationType= "linear")
Bg_track<-CircosBackground('BG01',minRadius = 145, maxRadius = 200)

Circos(moduleList = SNP_track+Bg_track,SNPMouseEvent = TRUE,SNPMouseOverDisplay = TRUE)
