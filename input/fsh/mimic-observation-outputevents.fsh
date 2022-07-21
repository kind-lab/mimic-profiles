Profile:        MimicObservationOutputevents
Parent:         Observation
Id:             mimic-observation-outputevents
Title:          "MIMIC Observation Outputevents"
Description:    "A MIMIC observation outputevents profile based on the base observation resource"

* code from http://fhir.mimic.mit.edu/ValueSet/mimic-outputevents-d-items
* category from http://fhir.mimic.mit.edu/ValueSet/mimic-observation-category

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounterICU)
