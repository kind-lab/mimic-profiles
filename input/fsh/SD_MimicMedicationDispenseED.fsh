Profile:        MimicMedicationDispenseED
Parent:         MedicationDispense
Id:             mimic-medicationdispense-ed
Title:          "MIMIC-ED MedicationDispense"
Description:    "A MedicationDispense resource that represents each record in the pyxis (ED medication dispensation) table of MIMIC-ED."

* identifer.system = $IdentiferMedicationDispenseED

// Cardinalities used elements
* status 1..1 // Unknown
* medication[x] 1..1
* medicationCodeableConcept.coding 1..*
* medicationCodeableConcept.text 1..1 // pyxis: name
* subject 1..1 // Reference(MimicPatient)
* context 1..1 // Reference(MimicEncounter)
* whenHandedOver 1..1 // pyxis: charttime

// Further specification of elements
* status = http://terminology.hl7.org/CodeSystem/medicationdispense-status#unknown "Unknown"
* medication[x] only CodeableConcept
* subject only Reference(MimicPatientED)
* context only Reference(MimicEncounterED)
* medicationCodeableConcept.coding from $GSN_VS // pyxis: gsn
