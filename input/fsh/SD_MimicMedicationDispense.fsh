Profile:        MimicMedicationDispense
Parent:         MedicationDispense
Id:             mimic-medication-dispense
Title:          "MIMIC Medication Dispense"
Description:    "A MIMIC medication dispense profile based on the FHIR R4 medication dispense resource."

// cardinalities of update elements
* identifier 1..*

// cardinalities of used elements
* status 1..1 // completed
* medication[x] 1..1
* subject 1..1 // Reference(MimicPatient)
* context 0..1 // Reference(MimicEncounter)
* authorizingPrescription 0..*
* quantity 0..1
* dosageInstruction.route 0..1
* dosageInstruction.timing 0..1
* dosageInstruction.maxDosePerPeriod 0..1

// futher specification of elements
* medication[x] only CodeableConcept
 
// binding to MIMIC terminology
* identifier.system = $IdentifierMedicationDispense
* dosageInstruction.timing.code from $MimicMedicationFrequency
* dosageInstruction.route from $MimicMedicationRoute

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
* authorizingPrescription only Reference(MimicMedicationRequest)