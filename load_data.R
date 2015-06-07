## List of commands used to generate the result... 
## should probably make this into a function of sorts

load_data <- function() {
    # Read the data
    data = read.table("household_power_consumption.txt"
                   , header=TRUE, sep=";"
                   , na.strings="?"
                   , colClasses=c(
                       Date="character"
                       , Time="character"
                       , Global_active_power="numeric"
                       , Global_reactive_power="numeric"
                       , Voltage="numeric"
                       , Global_intensity="numeric"
                       , Sub_metering_1="numeric"
                       , Sub_metering_2="numeric"
                       , Sub_metering_3="numeric"
                       )
                   )
    
    # Convert a to a data.table
    data = data.table(data)
    
    # Extract a subset
    data = data[ data$Date=="1/2/2007" | data$Date=="2/2/2007", ]
    
    # Transform data
    data$Date = as.Date(data$Date, format="%d/%m/%Y")
    data$DateTime = as.POSIXct(paste( data$Date, data$Time )
        , format="%Y-%m-%d %H:%M:%S")
    
    # Return the data table
    data
}

