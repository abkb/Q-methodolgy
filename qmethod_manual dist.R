install.packages("qmethod")
install.packages("readxl")
library(qmethod)
library(readxl)

qdata= read.csv("all calculation.csv")
row.names(qdata) = qdata[ ,1] # remove first row 
qdata[ ,1] = NULL            #remove first column

qdist= 
  c(
  -4, -4,
  -3, -3, -3,
  -2, -2, -2, -2, 
  -1, -1, -1, -1, -1, 
   0,  0,  0,  0,  0, 0,
   1,  1,  1,  1,  1, 
   2,  2,  2,  2,
   3,  3,  3,
   4,  4 
  )     # distribution of q-sort

results <- qmethod(qdata, nfactors = 3, 
                   forced = FALSE, 
                   distribution = qdist) # qmethod analysis 
summary(results)        # Summary: general characteristics and factor scores
results                 # Full results


round(results$loa, digits = 2)  # show factor loading 

loa.and.flags(results) #show flags 

results$f_char$characteristics   # Eigenvalues, total explained variability, and number of Q-sorts significantly loading

screeplot(prcomp(qdata), main = "Screeplot of unrotated factors", 
          type = "l")         # Screeplot
