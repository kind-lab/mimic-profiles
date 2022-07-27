Profile:        MimicProcedure
Parent:         Procedure
Id:             mimic-procedure
Title:          "MIMIC Procedure"
Description:    "A MIMIC procedure profile based on base Procedure resource."

// cardinalities of updated elements
* encounter 1..1
* performed[x] 1..1

// cardinalities of used elements
* status 1..1
* code 1..1
* subject 1..1

// further specification of elements
* performed[x] only dateTime

// binding to MIMIC terminology
* code from $MimicProcedureIcd // extending the us core valueset did not make sense (SCT, can map to later)

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)