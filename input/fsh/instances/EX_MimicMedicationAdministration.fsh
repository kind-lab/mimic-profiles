Instance: ExampleMimicMedicationAdministration
InstanceOf: MimicMedicationAdministration
Usage: #example

* identifier.type = $MimicIdentifierType#MEDHOSP "ICU medication administration"
* identifier.system = $IdentifierMedicationAdministration
* identifier.value = "10014354-41-1.10"
* status = #completed
* category = http://terminology.hl7.org/CodeSystem/medication-admin-category#inpatient "Inpatient" // CHECK, added later, mimic CS?
* medicationCodeableConcept = $MimicMedicationFormDrug#GABA100
* subject = Reference(ExampleMimicPatient)
* context = Reference(ExampleMimicEncounter)
* effectiveDateTime = "2146-10-09T20:50:00-04:00"
* request = Reference(ExampleMimicMedicationRequest)
* dosage.text = "1"
* dosage.method = $MimicMedicationMethodCS#Administered
* dosage.dose = 100 $MimicUnits#mg "mg"