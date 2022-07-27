Profile:        MimicMedicationAdministration
Parent:         MedicationAdministration
Id:             mimic-medication-administration
Title:          "MIMIC Medication Administration"
Description:    "A MIMIC medication administration profile based on the base FHIR medication administration resource."

// cardinalities of updated elements
* category 1..1
* medicationCodeableConcept 1..1

// cardinalities of used elements
* status 1..1
* subject 1..1
* context 0..1
* effective[x] 1..1
* dosage.text 0..1
* dosage.site 0..1
* dosage.route 0..1
* dosage.method 0..1
* dosage.dose 0..1
* dosage.rateQuantity 0..1

// binding to MIMIC terminology
* dosage.method from $MimicMedicationMethod
* dosage.route from $MimicMedicationRoute
* dosage.site from $MimicMedicationSite

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
* request only Reference(MimicMedicationRequest)