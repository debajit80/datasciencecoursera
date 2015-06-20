corr <- function(directory, threshold=0) {
 
  cr1 <<- complete("specdata",id=1:332) ##references number of complete cases from the complete.R function
  
  cr2 <<- subset(cr1, nobs > threshold, select=c(ID)) ##subsets data where the threshold condition is met
  
  cr3 <<- merge(v1, cr2, by=c("ID")) 
  
  library(plyr)
  
            groupedcorr <<- function(cr3){
    
            cr4 <<- return (data.frame(Correlation = cor(cr3$sulfate,cr3$nitrate)))
            
                                                                              }
              
                  if((nrow(cr2))==0) {cr5 <<- vector(mode="numeric",length=0)
                                      
                                      cr5
                                      }
                                        else
                                            {
                                              cr5 <<- (ddply(cr3,.(ID),groupedcorr))
                                              
                                              as.vector(cr5)
                                              
                                              cr6 <<- subset(cr5,ID > 0,select=c("Correlation"))
                                              
                                              cr6[,1]
                                              }
      
                                              
                                              
}

 