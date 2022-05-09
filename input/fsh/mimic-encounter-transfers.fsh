Profile:        MIMIC_Encounter_Transfers
Parent:         Encounter
Id:             mimic-encounter-transfers
Title:          "MIMIC Encounter"
Description:    "A MIMIC encounter transfers profile based on the base Encounter resource."

* identifier.system = "http://fhir.mimic.mit.edu/identifier/encounter-tranfers"  (exactly)

* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode
* type from http://fhir.mimic.mit.edu/ValueSet/transfer-type
* serviceType from http://fhir.mimic.mit.edu/ValueSet/careunit
