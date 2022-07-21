Profile:        MimicMedicationAdministration
Parent:         MedicationAdministration
Id:             mimic-medication-administration
Title:          "MIMIC Medication Administration"
Description:    "A MIMIC medication administration profile based on the base FHIR medication administration resource."

* identifier.type from http://fhir.mimic.mit.edu/ValueSet/mimic-identifier-type

* dosage.method from http://fhir.mimic.mit.edu/ValueSet/mimic-medication-method
* dosage.route from http://fhir.mimic.mit.edu/ValueSet/mimic-medication-route
* dosage.site from http://fhir.mimic.mit.edu/ValueSet/mimic-medication-site

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
* request only Reference(MimicMedicationRequest)