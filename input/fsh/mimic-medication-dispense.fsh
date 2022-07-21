Profile:        MimicMedicationDispense
Parent:         MedicationDispense
Id:             mimic-medication-dispense
Title:          "MIMIC Medication Dispense"
Description:    "A MIMIC medication dispense profile based on the base FHIR medication dispense resource."

* dosageInstruction.timing.code from http://fhir.mimic.mit.edu/ValueSet/mimic-medication-frequency
* dosageInstruction.route from http://fhir.mimic.mit.edu/ValueSet/mimic-medication-route

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
* authorizingPrescription only Reference(MimicMedicationRequest)