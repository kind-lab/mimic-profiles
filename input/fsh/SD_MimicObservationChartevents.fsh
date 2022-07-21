Profile:        MimicObservationChartevents
Parent:         Observation
Id:             mimic-observation-chartevents
Title:          "MIMIC Observation Chartevents"
Description:    "A MIMIC observation chartevents profile based on the base observation resource"

* code from http://fhir.mimic.mit.edu/ValueSet/mimic-chartevents-d-items
* category from http://fhir.mimic.mit.edu/ValueSet/mimic-observation-category

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounterICU)
