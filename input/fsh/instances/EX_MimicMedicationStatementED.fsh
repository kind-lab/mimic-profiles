// Instance
Instance:       ExampleMimicMedicationStatementED
InstanceOf:     MimicMedicationStatementED
Title:          "Example MedicationStatement MIMIC-ED"
Description:    "An example of how a MIMIC-ED MedicationStatement resource would look like."
Usage:          #example

* medicationCodeableConcept.text = "Minerals and Electrolytes - Calcium Replacement/Vitamin D Combinations" 
* medicationCodeableConcept.coding[gsnCode] = $GSN_CS#063395
* medicationCodeableConcept.coding[ndcCode] = $NDC#11845014031
* medicationCodeableConcept.coding[etccodeCode] = $ETC#00006143
* dateAsserted = 2177-02-13T03:31:00.000Z 
* subject = Reference(ExampleMimicPatientED)
* context = Reference(ExampleMimicEncounterED)