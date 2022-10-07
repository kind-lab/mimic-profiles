Instance: ExampleMimicMedicationDispense
InstanceOf: MimicMedicationDispense
Title: "Example MedicationDispense resource MIMIC-IV"
Description: "An example of how a MIMIC-IV MedicationDispense resource would look like."
Usage: #example

* identifier.system = $IdentifierMedicationDispense
* identifier.value = "29195459"
* status = #completed
* medicationCodeableConcept = $MimicMedicationName#"Potassium Chloride"
* subject = Reference(ExampleMimicPatient)
* context = Reference(ExampleMimicEncounter)
* authorizingPrescription = Reference(ExampleMimicMedicationRequest)
* dosageInstruction.timing.code = $MimicMedicationFrequencyCS#ONCE
* dosageInstruction.route = $MimicMedicationRouteCS#PO