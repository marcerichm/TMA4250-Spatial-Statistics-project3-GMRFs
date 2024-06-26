## Libraries
library(ggplot2)
library(sf)

## plotAreaCol
# This functions plots the values and saves the figure to the specified file.
# It is advisable to not plot directly in R since it will take a long time.
# The arguments are:
#   fNamme: file name for saving figure
#   width: width of figure in inches
#   height: height of figure in inches
#   estVal: the k values to be plotted on geoMap
#   geoMap: the map containing k regions
#   leg: name to use on top of legend
#   colLim: control lower limit and upper limit of color scale (colLim = c(lowVal, highVal))
plotAreaCol = function(fName, width, height, estVal, geoMap, leg, colLim = NULL){
  if(is.null(colLim)){
    colLim = range(estVal)
  }
  
  # Set up data object for plotting
  nigeriaMapTmp = geoMap
  nigeriaMapTmp$MCV1 = estVal
  
  # Plot
  map = ggplot() +
    geom_sf(data = nigeriaMapTmp,
            aes(fill = MCV1),
            color = 'gray', size = .2)+
    scale_fill_viridis_c(direction = 1,
                         begin = 1,
                         end = 0,
                         limit = colLim,
                         name = leg) + 
    theme(text = element_text(size=40),
          legend.key.height = unit(4, 'cm'),
          legend.key.width  = unit(1.75, 'cm'))
  ggsave(filename = fName,
         plot = map,
         width = width, 
         height = height)
}

