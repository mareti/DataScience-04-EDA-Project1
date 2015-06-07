


plot3 <- function() {
    # load_data()
    
    # we will use c as our source for now because it is 
    # already loaded into memory
    data = c
    
    x = data$DateTime
    y1 = data$Sub_metering_1
    y2 = data$Sub_metering_2
    y3 = data$Sub_metering_3
    
    plot(x, y1, type="n"
         , xlab=""
         , ylab="Energy sub metering"
         )
    points(x, y1, type="l", col="black")
    points(x, y2, type="l", col="red")
    points(x, y3, type="l", col="blue")
    
    
    legend("topright"
           , legend=c("Sub_metering_1"
                      ,"Sub_metering_2"
                      ,"Sub_metering_3"
                      )
           , lwd=1
           , cex=0.75
           , pt.cex=1
           , col=c("black","red","blue")
           )
}