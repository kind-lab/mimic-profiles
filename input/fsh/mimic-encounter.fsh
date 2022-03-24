Profile:        MIMIC_Encounter
Parent:         us-core-encounter
Id:             mimic-encounter
Title:          "MIMIC Encounter"
Description:    "A MIMIC encounter profile based on US Core Encounter."

* identifier.system = "http://fhir.mimic.mit.edu/identifier/encounter"  (exactly)

* class from http://fhir.mimic.mit.edu/ValueSet/admission-class
* type from http://fhir.mimic.mit.edu/ValueSet/admission-type
* hospitalization.admitSource from http://fhir.mimic.mit.edu/ValueSet/admit-source
* hospitalization.dischargeDisposition from http://fhir.mimic.mit.edu/ValueSet/discharge-disposition
