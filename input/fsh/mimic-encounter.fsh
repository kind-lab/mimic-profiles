Profile:        MIMIC_Encounter
Parent:         us-core-encounter
Id:             mimic-encounter
Title:          "MIMIC Encounter"
Description:    "A MIMIC encounter profile based on US Core Encounter."

* identifier.system = "http://fhir.mimic.mit.edu/identifier/encounter"  (exactly)

* class from admission-class
* type from admission-type
* hospitalization.admitSource from admit-source
* hospitalization.dischargeDisposition from discharge-disposition
