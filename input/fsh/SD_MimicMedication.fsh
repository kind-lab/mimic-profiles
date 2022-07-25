Profile:        MimicMedication
Parent:         Medication
Id:             mimic-medication
Title:          "MIMIC Medication"
Description:    "A MIMIC medication profile based on the base FHIR medication resource."

// cardinalities of updated elements
* identifier 1..*

// cardinalities of used elements
* code 1..1

// bindings to MIMIC terminology
* code from $MimicMedicationCodes
