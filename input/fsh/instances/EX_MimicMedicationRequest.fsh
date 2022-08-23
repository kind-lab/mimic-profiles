Instance: ExampleMimicMedicationRequest
InstanceOf: MimicMedicationRequest
Usage: #example

* identifier.system = $IdentifierMedicationRequestPHID
* identifier.value = "29195459"
* status = #stopped
* intent = #order
* medicationReference = Reference(ExampleMimicMedication)
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* authoredOn = "2130-11-01T09:43:48-04:00"
* dosageInstruction.text = "10mEq ER Tablet"
* dosageInstruction.timing.code = $MimicMedicationFrequencyCS#ONCE
* dosageInstruction.route = $MimicMedicationRouteCS#PO
* dosageInstruction.doseAndRate.doseQuantity = 40 $MimicUnits#mEq "mEq"
* dispenseRequest.validityPeriod.start = "2130-11-01T10:00:00-04:00"
* dispenseRequest.validityPeriod.end = "2130-11-02T09:00:00-04:00"