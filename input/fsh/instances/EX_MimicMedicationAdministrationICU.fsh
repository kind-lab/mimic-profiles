Instance: ExampleMimicMedicationAdministrationICU
InstanceOf: MimicMedicationAdministrationICU
Usage: #example

* status = #completed
* category = $MimicMedAdminCategoryICU_CS#"08-Antibiotics (IV)"
* medicationCodeableConcept = $MimicMedicationICU#220949 "Dextrose 5%"
* subject = Reference(ExampleMimicPatient)
* context = Reference(ExampleMimicEncounter)
* effectiveDateTime = "2201-11-11T08:55:00-05:00"
* dosage.method = $MimicMedicationMethodICU_CS#"Drug Push"
* dosage.dose = 100 $MimicUnits#ml "ml"