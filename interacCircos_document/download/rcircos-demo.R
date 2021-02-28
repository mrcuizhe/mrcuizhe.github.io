library(RCircos)

# Load hg19 and draw ideogram in RCircos
data(UCSC.HG19.Human.CytoBandIdeogram) 
RCircos.Set.Core.Components(cyto.info=UCSC.HG19.Human.CytoBandIdeogram,
                            chr.exclude=NULL,tracks.inside=5,tracks.outside=0)
RCircos.Set.Plot.Area()
RCircos.Chromosome.Ideogram.Plot() 

# Load data for scatter track
data(RCircos.Scatter.Data)

# Add scatter track into plot
RCircos.Scatter.Plot(RCircos.Scatter.Data, data.col=5,track.num=1, side='in', by.fold=1) 

# Load data for histogram track
data(RCircos.Histogram.Data)

# Add histogram track into plot
RCircos.Histogram.Plot(RCircos.Histogram.Data,data.col = 4,track.num = 3,side = 'in')

# Load data for link track
data(RCircos.Link.Data)

# Add link track into plot
RCircos.Link.Plot(RCircos.Link.Data,track.num=4,TRUE)