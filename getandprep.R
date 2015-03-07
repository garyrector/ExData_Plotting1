getandprep <- function() {

#### Check if the household_power_consumption dataset is already set up
#### --> Assume that it is set up if the global variable called "hpc" exists <--   
#### If this variable already exists, do nothing.
#### Else, download the raw file and prepare it for this project.
#### Return the dataset for plotting in global variable hpc
    
    if (!exists("hpc")){
        ### install dplyr package and library if needed
        if (!"dplyr" %in% rownames(installed.packages())) install.packages("dplyr")
        library(dplyr)
    
        ### download dataset zip file and unzip it
        site<-"https://archive.ics.uci.edu/ml/machine-learning-databases/00235/"
        z<-"household_power_consumption.zip"
        download.file(paste(site,z,sep=""),z)
        unzip(z)
        
        ### get the 2 days of data needed and rename columns for convenience
        ### convert date and time columns to single variable
        ### return tidy dataset
        hpc <<- read.table("household_power_consumption.txt"
                    ,skip=66636,nrows=2880
                    ,sep=";",na.strings="?",header=TRUE
                    ,col.names=c("date","time","kWact","kWreact"
                            ,"V","A","Wh1","Wh2","Wh3")) %>% 
                mutate(datetime=as.POSIXct(paste(date,time)
                            ,format="%d/%m/%Y %H:%M:%S")) %>%
                select(datetime,kWact,kWreact,V,A,Wh1,Wh2,Wh3)
    }
}
