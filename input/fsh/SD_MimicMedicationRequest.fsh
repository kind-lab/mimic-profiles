Profile:        MimicMedicationRequest
Parent:         MedicationRequest
Id:             mimic-medication-request
Title:          "MIMIC Medication Request"
Description:    "A MIMIC medication request profile based on the base FHIR medication request resource."

// cardinalities of used elements
* identifier 1..1
* status 1..1
* intent 1..1
* medicationReference 1..1
* subject 1..1
* encounter 0..1
* authoredOn 1..1
* dosageInstruction.route 0..1
* dosageInstruction.doseAndRate 0..1
* dosageInstruction.timing 0..1
* dosageInstruction.maxDosePerPeriod 0..1
* dispenseRequest.validityPeriod 0..1

// identifier slicing
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "MedicationRequest identifier.system slicing"

* identifier contains
  PH_ID 0..1 
  and POE_ID 0..1
* identifier[PH_ID].system 1..1
* identifier[PH_ID].system = $IdentifierMedicationRequestPHID
* identifier[PH_ID].value ^short = "Medication request pharmacy_id identifier"
* identifier[PH_ID].value 1..1

* identifier[POE_ID].system 1..1
* identifier[POE_ID].system = $IdentifierMedicationRequestPOE
* identifier[POE_ID].value ^short = "Medication request POE identifier"
* identifier[POE_ID].value 1..1

// binding to MIMIC terminology
* dosageInstruction.timing.code from $MimicMedicationFrequency
* dosageInstruction.route from $MimicMedicationRoute

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)