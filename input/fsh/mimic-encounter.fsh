// identifier system alias
Alias: $ENCOUNTER_HOSP = http://fhir.mimic.mit.edu/identifier/encounter-hosp
Alias: $ENCOUNTER_ICU = http://fhir.mimic.mit.edu/identifier/encounter-icu
Alias: $ENCOUNTER_ED = http://fhir.mimic.mit.edu/identifier/encounter-ed


Profile:        MimicEncounter
Parent:         us-core-encounter
Id:             mimic-encounter
Title:          "MIMIC Encounter"
Description:    "A MIMIC encounter profile based on US Core Encounter."

* class from http://fhir.mimic.mit.edu/ValueSet/admission-class
* type from http://fhir.mimic.mit.edu/ValueSet/encounter-type
* serviceType from http://fhir.mimic.mit.edu/ValueSet/services
* priority from http://fhir.mimic.mit.edu/ValueSet/admission-type
* hospitalization.admitSource from http://fhir.mimic.mit.edu/ValueSet/admit-source
* hospitalization.dischargeDisposition from http://fhir.mimic.mit.edu/ValueSet/discharge-disposition

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* partOf only Reference(MimicEncounter)
