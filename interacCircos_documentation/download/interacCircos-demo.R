library(interacCircos)

# The hg19 reference is already embedded in interacCircos,
# You can directly load hg19 by using 'genome' parameters,
# and load ideogram for hg19 by hg19_ideogram

# Customize ideogram track and its animation
ideogram_track<-CircosArc("arc01",data=hg19_ideogram,
                          innerRadius = 210,outerRadius = 230,animationDisplay = TRUE,
                          animationDelay=10,animationTime = 100)

# Load scatter data
load("scatterData.rda")

# The snp track and its background
# The SNP function of interacCircos is same as scatter of RCircos
snp_track<-CircosSnp("snp01",data=scatterData,minRadius = 183,maxRadius = 205,animationDisplay = TRUE,
                     animationDelay = 0,animationTime = 2000,animationType = "linear",circleSize = 1)
bg_track1<-CircosBackground("bg01",axisShow = TRUE,minRadius = 183,maxRadius = 205,fillColors ="rgb(241,220,179)",
                            animationDisplay = TRUE,animationType = "linear")

# Load histogram data
load("histogramData.rda")

# The histogram track
histogram_track<-CircosHistogram("histogram01",data=histogramData,minRadius = 143,maxRadius = 165,animationDisplay = TRUE)
bg_track2<-CircosBackground("bg02",axisShow = TRUE,minRadius = 143,maxRadius = 165,fillColors ="rgb(241,220,179)",
                            animationDisplay = TRUE,animationType = "linear")

# Load link data
load("linkData.rda")

# The link track
link_track01<-CircosLink("link01",data=linkData[which(linkData$g1chr==linkData$g2chr),],radius = 140,width = 1,
                         fillColor = "red",animationDisplay =TRUE,animationTime = 4000,animationDelay = 200)
link_track02<-CircosLink("link02",data=linkData[which(!linkData$g1chr==linkData$g2chr),],radius = 140,width = 1,
                         fillColor = "blue",animationDisplay = TRUE,animationTime = 4000,animationDelay = 200)

# Generate chromosome track and ideogram track
Circos(genome="hg19",moduleList=ideogram_track+snp_track+bg_track1+histogram_track+bg_track2+link_track01+link_track02,innerRadius = 238,outerRadius = 240)



