Profile:        MimicMedicationAdministrationICU
Parent:         MedicationAdministration
Id:             mimic-medication-administration-icu
Title:          "MIMIC Medication Administration ICU"
Description:    "A MIMIC medication administration ICU profile based on the base FHIR medication administration resource."

* category from $MimicMedAdminCategoryICU
* dosage.method from $MimicMedicationMethodICU

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
