
setwd("C:/Users/akibria/Desktop/Kib-UofA/Arizona/Collaboration & myone/Papers/Kacy/Mosquito/Q-method")

library(qmethod)

qdt= read.csv("qmethod.csv", header = T)
qdt[[2]]   # make distribution two parts of data
row.names(qdt)= qdt[,1] # show the row names of data file 
qdt[,1]= NULL # eliminate the first row of data file 
qdt
qrest= qmethod(qdt, nfactors = 3)   # run the q-method analysis 
qrest
summary(qrest)  # summary of q-method 


qrest$zsc
loa.and.flags(qrest)



