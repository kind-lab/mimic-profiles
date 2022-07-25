Profile:        MimicObservationMicroTest
Parent:         us-core-observation-lab
Id:             mimic-observation-micro-test
Title:          "MIMIC Observation Micro Test"
Description:    "A MIMIC observation microbiology test profile based on US Core observation lab profile"

* code from $MimicMicrobiologyTest

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
* hasMember only Reference(MimicObservationMicroOrg)