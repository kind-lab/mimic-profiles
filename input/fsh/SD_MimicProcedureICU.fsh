Profile:        MimicProcedureICU
Parent:         us-core-procedure
Id:             mimic-procedure-icu
Title:          "MIMIC Procedure ICU"
Description:    "A MIMIC procedure ICU profile based on US Core Procedure."

// cardinalities of used elements
* status 1..1
* category 1..1
* code 1..1
* bodySite 0..*
* subject 1..1
* encounter 1..1
* performedPeriod 1..1

// binding to MIMIC terminology
* code from $MimicProcedureeventsDItems
* bodySite from $MimicBodySite
* category from $MimicProcedureCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)