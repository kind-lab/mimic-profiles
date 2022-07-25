Profile:        MimicObservationMicroOrg
Parent:         us-core-observation-lab
Id:             mimic-observation-micro-org
Title:          "MIMIC Observation Micro Org"
Description:    "A MIMIC observation microbiology organism profile based on US Core observation lab profile"

* code from $MimicMicrobiologyOrganism

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* hasMember only Reference(MimicObservationMicroSusc)
* derivedFrom only Reference(MimicObservationMicroTest)
