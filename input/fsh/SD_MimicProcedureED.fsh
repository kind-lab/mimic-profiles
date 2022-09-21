Profile:        MimicProcedureED
Parent:         Procedure
Id:             mimic-procedure-ed
Title:          "MIMIC Procedure ED"
Description:    "A MIMIC procedure ED profile based on FHIR R4 Procedure."

// cardinalities of updated elements
* encounter 1..1
* performed[x] 1..1

// cardinalities of used elements
* status 1..1
* code 1..1
* subject 1..1

// further specification of elements
* performed[x] only dateTime
* status = $EventStatus#completed "Completed"
* performed[x] only dateTime

// binding to MIMIC terminology
* code from MimicProcedureTypesED

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
