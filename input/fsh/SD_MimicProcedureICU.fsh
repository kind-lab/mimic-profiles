Profile:        MimicProcedureICU
Parent:         us-core-procedure
Id:             mimic-procedure-icu
Title:          "MIMIC Procedure ICU"
Description:    "A MIMIC procedure ICU profile based on US Core Procedure."

* code from $MimicProcedureeventsDItems
* bodySite from $MimicBodySite
* category from $MimicProcedureCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)