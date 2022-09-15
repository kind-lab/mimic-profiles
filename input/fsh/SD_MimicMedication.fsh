Profile:        MimicMedication
Parent:         Medication
Id:             mimic-medication
Title:          "MIMIC Medication"
Description:    "A MIMIC medication profile based on the FHIR R4 medication resource."

// cardinalities of updated elements
* identifier 1..*

// cardinalities of used elements
* code 0..1

// bindings to MIMIC terminology
* code from $MimicMedicationCodes
