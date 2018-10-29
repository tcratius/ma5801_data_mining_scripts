library(dtree)
library(rpart)
library(Hmisc)

org_purchase <- read.csv("raw_data/OrganicsPurchase.csv", header=T) 

op <- t(org_purchase)

cor(op[ , 1:10], op$TargetBuy, method="kendall")

$NeighborhoodClusterGroup <-  as.numeric(org_purchase$NeighborhoodClusterGroup)

as.numeric(levels(f))[as.integer(f)]

rcorr(as.matrix(org_purchase), type="kendall")

cor(op)


cor.prob <- function(X, dfr = nrow(X) - 2) {
  R <- cor(X)
  above <- row(R) < col(R)
  r2 <- R[above]^2
  Fstat <- r2 * dfr / (1 - r2)
  R[above] <- 1 - pf(Fstat, 1, dfr)
  
  cor.mat <- t(R)
  cor.mat[upper.tri(cor.mat)] <- NA
  cor.mat
}

model = lm(TargetBuy ~ ., data = org_purchase)
lm_coeff = model$coefficients
lm_coeff

# multi independent single dependent
lm_coeff <- coef(lm(TargetBuy ~., data = org_purchase))
