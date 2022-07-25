Profile:        MimicObservationMicroTest
Parent:         us-core-observation-lab
Id:             mimic-observation-micro-test
Title:          "MIMIC Observation Micro Test"
Description:    "A MIMIC observation microbiology test profile based on US Core observation lab profile"


// cardinalities of used elements
* status 1..1
* category 1..1
* code 1..1
* subject 1..1
* specimen 1..1
* encounter 0..1
* effectiveDateTime 1..1
* hasMember 0..1
* valueString 0..1
* valueCodeableConcept 0..1


// binding to MIMIC terminology
* code from $MimicMicrobiologyTest

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
* hasMember only Reference(MimicObservationMicroOrg)