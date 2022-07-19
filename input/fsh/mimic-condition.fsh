Profile:        MimicCondition
Parent:         us-core-condition
Id:             mimic-condition
Title:          "MIMIC Condition"
Description:    "A MIMIC condition profile based on US Core Condition."

* identifier.system = "http://fhir.mimic.mit.edu/identifier/condition"  (exactly)

* category.coding.code = #encounter-diagnosis (exactly)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category" (exactly)
* category ^short = "All encounters are assumed to be diagnosis encounters in MIMIC"

* code from http://fhir.mimic.mit.edu/ValueSet/diagnosis-icd

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
