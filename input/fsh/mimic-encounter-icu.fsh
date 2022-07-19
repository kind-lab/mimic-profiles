Profile:        MimicEncounterICU
Parent:         us-core-encounter
Id:             mimic-encounter-icu
Title:          "MIMIC Encounter ICU"
Description:    "A MIMIC encounter ICU profile based on US Core Encounter."

* identifier.system = "http://fhir.mimic.mit.edu/identifier/encounter-icu"  (exactly)

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* partOf only Reference(MimicEncounter)
