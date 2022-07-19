Profile:        MimicProcedure
Parent:         us-core-procedure
Id:             mimic-procedure
Title:          "MIMIC Procedure"
Description:    "A MIMIC procedure profile based on US Core Procedure."

* identifier.system = "http://fhir.mimic.mit.edu/identifier/procedure"  (exactly)
* code from http://fhir.mimic.mit.edu/ValueSet/procedure-icd

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)