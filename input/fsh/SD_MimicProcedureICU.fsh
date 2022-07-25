Profile:        MimicProcedureICU
Parent:         Procedure
Id:             mimic-procedure-icu
Title:          "MIMIC Procedure ICU"
Description:    "A MIMIC procedure ICU profile based on base Procedure resource."

// cardinalities of updated elements
* category 1..1
* encounter 1..1
* performedPeriod 1..1

// cardinalities of used elements
* status 1..1
* code 1..1
* subject 1..1
* bodySite 0..*

// binding to MIMIC terminology
* code from $MimicProcedureeventsDItems // will need to map to SCT for us core conformance 
* bodySite from $MimicBodySite
* category from $MimicProcedureCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)