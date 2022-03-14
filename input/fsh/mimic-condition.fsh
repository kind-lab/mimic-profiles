Profile:        MIMIC_Condition
Parent:         us-core-condition
Id:             mimic-condition
Title:          "MIMIC Condition"
Description:    "A MIMIC condition profile based on US Core Condition."

* identifier.system = "http://fhir.mimic.mit.edu/identifier/condition"  (exactly)

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical" (exactly)
* clinicalStatus ^short = "All conditions are assumed to be active in MIMIC"

* category.coding.code = #encounter-diagnosis (exactly)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category" (exactly)
* category ^short = "All encounters are assumed to be encounters diagnosis in MIMIC"

* code from http://fhir.mimic.mit.edu/ValueSet/diagnosis-icd
