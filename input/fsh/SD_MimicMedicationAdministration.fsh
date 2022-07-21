Profile:        MimicMedicationAdministration
Parent:         MedicationAdministration
Id:             mimic-medication-administration
Title:          "MIMIC Medication Administration"
Description:    "A MIMIC medication administration profile based on the base FHIR medication administration resource."

// this could be sliced?
* identifier.system = $IdentifierMedicationAdministration

* dosage.method from $MimicMedicationMethod
* dosage.route from $MimicMedicationRoute
* dosage.site from $MimicMedicationSite

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
* request only Reference(MimicMedicationRequest)