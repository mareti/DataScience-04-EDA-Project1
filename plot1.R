


plot1 <- function() {
    # load_data()
    
    # we will use c as our source for now because it is 
    # already loaded into memory
    data = c
    
    hist(data$Global_active_power
         , col="red"
         , main="Global Active Power"
         , xlab="Global Active Power (kilowatts)"
         , pin=c(480,480)
         , xlim=c(0,6)
         , ylim=c(0,1200)
         )
    
}