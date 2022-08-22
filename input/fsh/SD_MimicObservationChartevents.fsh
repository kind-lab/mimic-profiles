Profile:        MimicObservationChartevents
Parent:         Observation
Id:             mimic-observation-chartevents
Title:          "MIMIC Observation Chartevents"
Description:    "A MIMIC observation chartevents profile based on the base observation resource"

// cardinalities of update elements
* category 1..1
* subject 1..1
* encounter 1..1
* effective[x] 1..1
* value[x] 1..1

// cardinalities of used elements
* status 1..1
* code 1..1
* issued 0..1
* referenceRange.low 0..1
* referenceRange.high 0..1

// further specification of elements
* value[x] only string or Quantity
* effective[x] only dateTime

// binding to MIMIC terminology
* code from $MimicCharteventsDItems
* category from $MimicObservationCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
