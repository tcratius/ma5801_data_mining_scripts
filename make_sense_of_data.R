library(dplyr) # organising data.
library(ggplot2) # Plotting.
library(gridExtra) # for grid Arrange.



wine.data <- read.csv("datasets_4_stats_book/wine_data.csv", header = FALSE)

colnames(wine.data) <- c("Alcohol", "Malic.Acid", "Ash", "Alcalinity.of.Ash",
                         "Magnesium", "Total.Phenols", "Flavanoids", 
                         "Nonflavanoid.Phenols", "Proanthocyanins", 
                         "Colour.Intensity", "Hue", "OD280", "OD315", "Proline")

write.table(wine.data, file = "datasets_4_stats_book/wine.data.names.csv", append = FALSE, quote = TRUE, sep = ",",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE, col.names = TRUE,
            qmethod = c("escape", "double"), fileEncoding = "")



WD.group <- subset(wine.data, select=c("Alcohol", "Malic.Acid", "Alcalinity.of.Ash", "Nonflavanoid.Phenols", "Proline")) 

WDG_summary <-  WD.group %>%
  group_by(Alcohol) %>%
  summarise(count = length(Alcohol), mean.Malic.Acid = round(mean(Malic.Acid),2),
            mean.Alcalinity = round(mean(Alcalinity.of.Ash),2), 
            mean.Nonflavanoid = round(mean(Nonflavanoid.Phenols),2),
            mean.proline = round(mean(Proline), 0))

WD.cov <- cov(WD.group) # checking covariance
WD.cov

# Overlaid histogram
plot1 <- ggplot(malic, aes(x=Malic.Acid, fill=factor(Alcohol))) +
            geom_histogram(binwidth=.5, position="identity", 
                           colour="Grey", alpha=0.9) +
            scale_fill_manual(values=c("#071d8a", "#fd2e24", "#feff05"), 
                              (name="Alcohol:\nGroup by")) +
            theme_classic()
# plot1

# Interleave histogram
plot2 <- ggplot(malic, aes(x=Malic.Acid, fill=factor(Alcohol))) +
            geom_histogram(binwidth=.5, position="dodge", 
                           colour="Grey", alpha = 0.9) +
            scale_fill_manual(values=c("#071d8a", "#fd2e24", "#feff05"), 
                              (name="Alcohol:\nGroup by")) +
            theme_classic()

# Arrange each plot side by side
grid.arrange(plot1, plot2, nrow=1, ncol=2)

#~~~~~~~~
# Fitdistrplus
#
#~~~~~~~
library(fitdistrplus)
plotdist(WD.group$Malic.Acid, histo = TRUE, demp = TRUE)

descdist(WD.group$Malic.Acid, boot = 1000, discrete = F, 
         graph = T, boot.col = "Orange")
par(mfrow = c(2, 2))
# fg <- fitdist(WD.group$Malic.Acid, "beta")
fu <- fitdist(WD.group$Malic.Acid, "unif") 

plot.legend <- c("Uniform")
denscomp(list(fu), legendtext = plot.legend)
qqcomp(list(fu), legendtext = plot.legend)
cdfcomp(list(fu), legendtext = plot.legend)
ppcomp(list(fu), legendtext = plot.legend)


#~~~~~~~~
# Going to use part of WD.group, WDG_summary to calculate the discriminant analysis.
# was my attempts as cov with dataframes.
# Not sure if was done correctly.
#~~~~~~~

n <- nrow(WD.group) # number of observations
n.g1 <- WDG_summary[1,2, drop=T] # drop = TRUE needs to be set to extract variable from df.

n.g1

prior.prob <- n.g1/n

# take all values of Alcohol with the int value 1
WDG.Alcohol1 <- subset(WD.group, Alcohol == 1) 

# remove that column
WDG.Alcohol1 <- subset(WDG.Alcohol1, select = -Alcohol)

WDG_cov <- cov(WDG.Alcohol1[1:4,]) #covariance 

# Manual conversion
WDG.mean <- WDG.Alcohol1 %>%
  summarise_all(mean) # don't think this worked too well.

# Sweep was a better recommended method.
Diff_WDG <- sweep(WDG.Alcohol1, 2, colMeans(WDG.Alcohol1))

# The difference between the mean and each vector of the column.
D  <- WDG.Alcohol1 - WDG.mean

# Formulate the covariance matrix.
# (n-1)^-1 creates inverse matrix.
# t(D) creates transpose of matrix.
S.hat  <- (n.g1-1)^-1 * t(Diff_WDG) %*% as.matrix(Diff_WDG)

S.hat

cov(WDG.Alcohol1)^-1
