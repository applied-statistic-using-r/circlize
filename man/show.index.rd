\name{show.index}
\alias{show.index}
\title{
  Label the sector index and the track index of each cell


}
\description{
  Label the sector index and the track index of each cell


}
\usage{
show.index()
}
\details{
  Draw the index of the sector and track for each cell on the figure.This function can help you to find the coordinate of cells. 


}
\examples{
library(circlize)
par(mar = c(1, 1, 1, 1))
factors = factor(letters[1:10], levels = sample(letters[1:10], 10))
circos.par("cell.padding" = c(0, 0, 0, 0), points.overflow.warning = FALSE)
circos.initialize(factors = factors, xlim = c(0, 10))
circos.trackPlotRegion(factors = factors, ylim = c(0, 10))
circos.trackPlotRegion(factors = factors, ylim = c(0, 10))
circos.trackPlotRegion(factors = factors, ylim = c(0, 10))
circos.trackPlotRegion(factors = factors, ylim = c(0, 10))
for(l in letters[1:10]) {
    circos.rect(0,0,10,10,sector.index = l, track.index = 2, col = "#FF000040")
}

for(l in 1:4) {
    circos.rect(0,0,10,10,sector.index = "a", track.index = l, col = "#0000FF40")
}
show.index()
circos.clear()

}