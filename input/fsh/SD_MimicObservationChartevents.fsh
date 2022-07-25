Profile:        MimicObservationChartevents
Parent:         Observation
Id:             mimic-observation-chartevents
Title:          "MIMIC Observation Chartevents"
Description:    "A MIMIC observation chartevents profile based on the base observation resource"

* code from $MimicCharteventsDItems
* category from $MimicObservationCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
