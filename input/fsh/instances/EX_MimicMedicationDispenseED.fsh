// Instance
Instance:       ExampleMimicMedicationDispenseED
InstanceOf:     MimicMedicationDispenseED
Title:          "Example MedicationDispense MIMIC-ED"
Description:    "An example of how a MIMIC-ED MedicationDispense resource would look like."
Usage:          #example

* whenHandedOver = 2116-06-09T23:21:00.000Z
* subject = Reference(ExampleMimicPatientED)
* context = Reference(ExampleMimicEncounterED)
* medicationCodeableConcept.coding = $GSN_CS#041562
* medicationCodeableConcept.text = "Ondansetron ODT"
