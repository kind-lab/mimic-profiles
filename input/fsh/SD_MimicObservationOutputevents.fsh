Profile:        MimicObservationOutputevents
Parent:         Observation
Id:             mimic-observation-outputevents
Title:          "MIMIC Observation Outputevents"
Description:    "A MIMIC observation outputevents profile based on the FHIR R4 observation resource"

// cardinalities of updated elements
* category 1..1
* subject 1..1
* encounter 1..1
* effective[x] 1..1
* value[x] 1..1

// cardinalities of used elements
* status 1..1
* code 1..1
* issued 0..1

// further specification of elements
* effective[x] only dateTime
* value[x] only Quantity

// binding to MIMIC terminology
* code from $MimicOutputeventsDItems
* category from $MimicObservationCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
