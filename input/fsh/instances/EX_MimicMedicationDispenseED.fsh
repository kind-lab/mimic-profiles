// Instance
Instance:       ExampleMimicMedicationDispenseED
InstanceOf:     MimicMedicationDispenseED
Title:          "Example MedicationDispense resource MIMIC-ED"
Description:    "An example of how a MIMIC-ED MedicationDispense resource would look like."
Usage:          #example

* whenHandedOver = 2118-07-10T34:22:00.000Z
* subject = Reference(ExampleMimicPatientED)
* context = Reference(ExampleMimicEncounterED)
* medicationCodeableConcept.coding = $GSN_CS#041562
* medicationCodeableConcept.text = "Ondansetron ODT"
