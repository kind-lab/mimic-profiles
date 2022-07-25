Profile:        MimicObservationChartevents
Parent:         Observation
Id:             mimic-observation-chartevents
Title:          "MIMIC Observation Chartevents"
Description:    "A MIMIC observation chartevents profile based on the base observation resource"

// cardinalities of used elements
* status 1..1
* category 1..1
* code 1..1
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* issued 0..1
* valueQuantity 0..1
* valueString 0..1
* referenceRange.low 0..1
* referenceRange.high 0..1

// binding to MIMIC terminology
* code from $MimicCharteventsDItems
* category from $MimicObservationCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
