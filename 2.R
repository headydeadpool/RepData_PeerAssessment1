library(gridExtra)

## plotting injuries, fatalities, property damage and crop damage related events on a graph

p1 <- qplot(INJURIES, EVTYPE, data = mostHarmfulInjuriesEvents , xlab="Number of Injuries", ylab="Event Type")
p2 <- qplot(FATALITIES, EVTYPE, data = mostHarmfulFatalitiesEvents , xlab="Number of Fatalities", ylab="Event Type")
p3 <- qplot(PROPDMG, EVTYPE, data = mostHarmfulPropDmgEvents, xlab="Property Damage", ylab="Event Type")
p4 <- qplot(CROPDMG, EVTYPE, data = mostHarmfulCropDmgEvents, xlab="crop Damage", ylab="Event Type")

grid.arrange(p1, p2, p3, p4, ncol = 2, nrow = 2)
