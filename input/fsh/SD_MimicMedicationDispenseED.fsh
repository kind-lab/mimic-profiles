Profile:        MimicMedicationDispenseED
Parent:         MedicationDispense
Id:             mimic-medication-dispense-ed
Title:          "MIMIC-ED MedicationDispense"
Description:    "A MedicationDispense resource that represents each record in the pyxis (ED medication dispensation) table of MIMIC-ED."

// cardinalities of updated elements
* medicationCodeableConcept.coding 0..*
* medicationCodeableConcept.text 1..1 // pyxis: name
* context 1..1 // Reference(MimicEncounter)
* whenHandedOver 1..1 // pyxis: charttime

// cardinalities of used elements
* status 1..1 // Unknown
* medication[x] 1..1
* subject 1..1 // Reference(MimicPatient)

// further specification of elements
* status = $MedicationDispenseStatus#unknown "Unknown"
* medication[x] only CodeableConcept
* medicationCodeableConcept.coding from $GSN_VS // pyxis: gsn

// referencing MIMIC profiles
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
