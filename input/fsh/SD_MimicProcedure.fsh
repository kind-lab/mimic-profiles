Profile:        MimicProcedure
Parent:         us-core-procedure
Id:             mimic-procedure
Title:          "MIMIC Procedure"
Description:    "A MIMIC procedure profile based on US Core Procedure."

// cardinalities of used elements
* status 1..1
* code 1..1
* subject 1..1
* encounter 1..1
* performedDateTime 1..1

// binding to MIMIC terminology
* code from $MimicProcedureIcd

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)