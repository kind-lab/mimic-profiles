Profile:        MimicMedicationRequest
Parent:         MedicationRequest
Id:             mimic-medication-request
Title:          "MIMIC Medication Request"
Description:    "A MIMIC medication request profile based on the base FHIR medication request resource."

* identifier 1..*
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

* identifier[ED_ID].system 1..1
* identifier[ED_ID].system = $IdentifierMedicationRequestPOE
* identifier[ED_ID].value ^short = "Medication request POE identifier"
* identifier[ED_ID].value 1..1


* dosageInstruction.timing.code from $MimicMedicationFrequency
* dosageInstruction.route from $MimicMedicationRoute

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)