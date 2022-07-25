Profile:        MimicObservationDatetimeevents
Parent:         Observation
Id:             mimic-observation-datetimeevents
Title:          "MIMIC Observation Datetimeevents"
Description:    "A MIMIC observation datetimeevents profile based on the base observation resource"

// cardinalities of used elements
* status 1..1
* category 1..1
* code 1..1
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* issued 0..1
* valueQuantity 1..1

// binding to MIMIC terminology
* code from $MimicDatetimeeventsDItems
* category from $MimicObservationCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
