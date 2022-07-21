Profile:        MimicMedicationAdministrationICU
Parent:         MedicationAdministration
Id:             mimic-medication-administration-icu
Title:          "MIMIC Medication Administration ICU"
Description:    "A MIMIC medication administration ICU profile based on the base FHIR medication administration resource."

* identifier.type from http://fhir.mimic.mit.edu/ValueSet/mimic-identifier-type
* category from http://fhir.mimic.mit.edu/ValueSet/mimic-medadmin-category-icu
* dosage.method from http://fhir.mimic.mit.edu/ValueSet/mimic-medication-method-icu

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounterICU)
