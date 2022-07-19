Profile:        MimicMedicationAdministration
Parent:         MedicationAdministration
Id:             mimic-medication-administration
Title:          "MIMIC Medication Administration"
Description:    "A MIMIC medication administration profile based on the base FHIR medication administration resource."

* identifier.type from http://fhir.mimic.mit.edu/ValueSet/identifier-type

* dosage.method from http://fhir.mimic.mit.edu/ValueSet/medication-method
* dosage.route from http://fhir.mimic.mit.edu/ValueSet/medication-route
* dosage.site from http://fhir.mimic.mit.edu/ValueSet/medication-site

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
* request only Reference(MimicMedicationRequest)