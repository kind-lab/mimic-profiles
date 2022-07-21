Profile:        MimicCondition
Parent:         us-core-condition
Id:             mimic-condition
Title:          "MIMIC Condition"
Description:    "A MIMIC condition profile based on US Core Condition."

* identifier.system = $IdentifierCondition

* category.coding.code = #encounter-diagnosis
* category.coding.system = $ConditionCategory
* category ^short = "All encounters are assumed to be diagnosis encounters in MIMIC"

* code from $MimicDiagnosisIcd

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
