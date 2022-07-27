Profile:        MimicMedicationAdministrationICU
Parent:         MedicationAdministration
Id:             mimic-medication-administration-icu
Title:          "MIMIC Medication Administration ICU"
Description:    "A MIMIC medication administration ICU profile based on the base FHIR medication administration resource."

// cardinalities of updated elements
* category 1..1
* context 1..1

// cardinalities of used elements
* status 1..1
* medication[x] 1..1
* subject 1..1
* effective[x] 1..1
* effectiveDateTime 0..1
* effectivePeriod 0..1
* dosage.method 0..1
* dosage.dose 0..1
* dosage.rateQuantity 0..1

// further specification of elements
* medication[x] only CodeableConcept

// bindings to MIMIC terminology
* category from $MimicMedAdminCategoryICU
* dosage.method from $MimicMedicationMethodICU

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
