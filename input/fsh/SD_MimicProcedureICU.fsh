Profile:        MimicProcedureICU
Parent:         us-core-procedure
Id:             mimic-procedure-icu
Title:          "MIMIC Procedure ICU"
Description:    "A MIMIC procedure ICU profile based on US Core Procedure."

* code from http://fhir.mimic.mit.edu/ValueSet/procedureevents-d-items
* bodySite from http://fhir.mimic.mit.edu/ValueSet/bodysite
* category from http://fhir.mimic.mit.edu/ValueSet/procedure-category

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounterICU)