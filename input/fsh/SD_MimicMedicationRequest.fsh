Profile:        MimicMedicationRequest
Parent:         MedicationRequest
Id:             mimic-medication-request
Title:          "MIMIC Medication Request"
Description:    "A MIMIC medication request profile based on the base FHIR medication request resource."

* identifier.type from http://fhir.mimic.mit.edu/ValueSet/identifier-type

* dosageInstruction.timing.code from http://fhir.mimic.mit.edu/ValueSet/mimic-medication-frequency
* dosageInstruction.route from http://fhir.mimic.mit.edu/ValueSet/mimic-medication-route

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)