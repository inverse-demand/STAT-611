dev.new()
# Configure Layout
lay.mat <- matrix(c(1,1,1,1,2,3,4,4),2,4)
layout(mat=lay.mat)                                  
layout.show(n=max(lay.mat)) 

# Now add plots
plot(quakes$long,quakes$lat,cex=0.02*quakes$stations,
     xlab="Longitude",ylab="Latitude")
box(which = "figure", lty = 'solid', col = 'gray')
plot(quakes$mag, quakes$stations, xlab = "Magnitude", ylab = "Stations")
box(which = "figure", lty = 'solid', col = 'gray')
plot(quakes$depth, quakes$stations, xlab = "Depth", ylab = "Stations")
box(which = "figure", lty = 'solid', col = 'gray')
hist(quakes$stations, xlab = "Stations", col = "white")
abline(v=mean(quakes$stations),lty=2)
box(which = "figure", lty = 'solid', col = 'gray')
box(which = "outer", lty = 'solid', col = 'gray')