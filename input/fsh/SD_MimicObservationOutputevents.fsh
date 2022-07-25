Profile:        MimicObservationOutputevents
Parent:         Observation
Id:             mimic-observation-outputevents
Title:          "MIMIC Observation Outputevents"
Description:    "A MIMIC observation outputevents profile based on the base observation resource"

// cardinalities of updated elements
* category 1..1
* subject 1..1
* encounter 1..1
* effective[x] 1..1
* effectiveDateTime 1..1
* value[x] 1..1
* valueQuantity 1..1

// cardinalities of used elements
* status 1..1
* code 1..1
* issued 0..1

// binding to MIMIC terminology
* code from $MimicOutputeventsDItems
* category from $MimicObservationCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
