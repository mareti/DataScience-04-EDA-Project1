


plot2 <- function() {
    # load_data()
    
    # we will use c as our source for now because it is 
    # already loaded into memory
    data = c
    
    x = data$DateTime
    y = data$Global_active_power
    
    plot(x, y, type="l"
         , xlab=""
         , ylab="Global Active Power (kilowatts)"
         )
}