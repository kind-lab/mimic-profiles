Profile:        MimicCondition
Parent:         Condition
Id:             mimic-condition
Title:          "MIMIC Condition"
Description:    "A MIMIC condition profile based on FHIR R4 Condition."

// cardinalities of updated elements
* encounter 1..1

// cardinalities of used elements
* category 1..1
* code 1..1
* subject 1..1

// modifications to category and code
* category = $ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* category ^short = "All conditions are assumed to be encounter diagnosis (a point in time diagnosis related to an encounter) in MIMIC"
* code from $MimicDiagnosisIcd

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
