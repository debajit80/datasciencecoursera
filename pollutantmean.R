pollutantmean <- function(directory, pollutant, ID){
  
  ## x <- paste(getwd(),directory,sep="/",collpase=NULL)  ##points to the directory where data is stored; assumes working directory already points to the directory where the specdata folder is located
    
  ## y <- paste(x,list.files(x),sep="",collapse=NULL) ##reads all the data files in the directory
    
  z <- do.call(rbind,lapply(y,read.csv)) ##appends all datasets 
    
  w <- data.frame(z)  ##converts dataset to a dataframe
    
  v <- w[w$ID %in% c(ID),] ##subsets data based on ID input 
    
  mean <- mean(v[[pollutant]], na.rm=TRUE) ##calculates mean excluding misisng values on the subset data 
    
  mean ##prints mean 
  
  }        
