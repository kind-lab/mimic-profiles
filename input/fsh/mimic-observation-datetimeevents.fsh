Profile:        MimicObservationDatetimeevents
Parent:         Observation
Id:             mimic-observation-datetimeevents
Title:          "MIMIC Observation Datetimeevents"
Description:    "A MIMIC observation datetimeevents profile based on the base observation resource"

* code from http://fhir.mimic.mit.edu/ValueSet/datetimeevents-d-items
* category from http://fhir.mimic.mit.edu/ValueSet/observation-category

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounterICU)
