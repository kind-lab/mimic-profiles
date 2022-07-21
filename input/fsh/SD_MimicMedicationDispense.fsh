Profile:        MimicMedicationDispense
Parent:         MedicationDispense
Id:             mimic-medication-dispense
Title:          "MIMIC Medication Dispense"
Description:    "A MIMIC medication dispense profile based on the base FHIR medication dispense resource."

* identifier.system = $IdentiferMedicationDispense
* dosageInstruction.timing.code from $MimicMedicationFrequency
* dosageInstruction.route from $MimicMedicationRoute

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
* authorizingPrescription only Reference(MimicMedicationRequest)