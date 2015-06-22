 complete <- function(directory, id=1:332) {
  
   x <<- paste(getwd(),directory,sep="/",collpase=NULL)  ##points to the directory where data is stored; assumes working directory already points to the directory where the specdata folder is located
   
      y <<- paste(x,list.files(x),sep="",collapse=NULL) ##reads all the data files in the directory
   
        z <<- do.call(rbind,lapply(y,read.csv)) ##appends all datasets 
   
            w <<- data.frame(z)  ##converts dataset to a dataframe
   
              v <<- w[w$ID %in% c(id),] ##subsets data based on ID input 
   
                v1 <<- v[complete.cases(v),] ##looks up only non missing values from the dataset 
   
                  v2 <<- as.data.frame(table(v1$ID)) ##creates a dataframe with grouped ID counts 
   
                    v3 <<- data.frame(ID=v2$Var1,nobs=v2$Freq) ##creates the desired dataframe with ID and nobs columns
   
                      v4 <<- data.frame(ID=c(id)) ##creates an empty dataframe with the specified ID's
   
                        v5 <<- merge(v4,v3,by=c("ID"), all=TRUE, all.v4=TRUE, sort=FALSE) ##creates the frequency table without sorting 
   
                          v5[is.na(v5)] <- 0                     
   
                          as.data.frame(v5)
   
                          library(plyr)
   
                            v6 <<- merge(v4,v5,by=c("ID"), all=TRUE, all.v4=TRUE, sort=FALSE)
   
                              v7 <<- rename(v6, c("ID"="id"))                         
   
                                v7 ##returns the dataframe
   
 }