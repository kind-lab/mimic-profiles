Profile:        MimicMedication
Parent:         Medication
Id:             mimic-medication
Title:          "MIMIC Medication"
Description:    "A MIMIC medication profile based on the base FHIR medication resource."

// cardinalities of used elements
* identifier 1..*
* code 1..1

// bindings to MIMIC terminology
* code from $MimicMedicationCodes
