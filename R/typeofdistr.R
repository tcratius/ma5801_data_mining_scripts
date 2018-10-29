library(fitdistrplus)

# The descdist function provides classical descriptive statistics
plotdist(WD.group$Malic.Acid, histo = TRUE, demp = TRUE)

descdist(WD.group$Malic.Acid, boot = 1000, 
         discrete = F, graph = T, boot.col = "Orange") 

plot(fit.distr)


