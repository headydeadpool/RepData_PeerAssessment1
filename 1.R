## adding up injuries, fatalities, property damagea and crop damage according to event types
aggregatedInjuriesDT <- aggregate(INJURIES~EVTYPE, data, sum)
aggregatedFatalitiesDT <- aggregate(FATALITIES~EVTYPE, data, sum)
aggregatedPropDmgDT <- aggregate(PROPDMG~EVTYPE, data, sum)
aggregatedCropDmgDT <- aggregate(CROPDMG~EVTYPE, data, sum)

## sorting aggregated data sets
sortedInjuriesDT <- aggregatedInjuriesDT[order(aggregatedInjuriesDT$INJURIES , aggregatedInjuriesDT$EVTYPE, decreasing = TRUE), ]
sortedFatalitiesDT <- aggregatedFatalitiesDT[order(aggregatedFatalitiesDT$FATALITIES , aggregatedFatalitiesDT$EVTYPE, decreasing = TRUE), ]
sortedPropDmgDT <- aggregatedPropDmgDT[order(aggregatedPropDmgDT$PROPDMG , aggregatedPropDmgDT$EVTYPE, decreasing = TRUE), ]
sortedCropDmgDT <- aggregatedCropDmgDT[order(aggregatedCropDmgDT$CROPDMG , aggregatedCropDmgDT$EVTYPE, decreasing = TRUE), ]

## grabbing most harmful events, i decided to just take the top 10
mostHarmfulInjuriesEvents <- head(sortedInjuriesDT, n = 10)
mostHarmfulFatalitiesEvents <- head(sortedFatalitiesDT, n = 10)
mostHarmfulPropDmgEvents <- head(sortedPropDmgDT, n = 10)
mostHarmfulCropDmgEvents <- head(sortedCropDmgDT, n = 10)