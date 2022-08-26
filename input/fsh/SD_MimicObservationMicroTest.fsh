Profile:        MimicObservationMicroTest
Parent:         us-core-observation-lab
Id:             mimic-observation-micro-test
Title:          "MIMIC Observation Micro Test"
Description:    "A MIMIC observation microbiology test profile based on the base observation resource"

// cardinalities of updated elements
* specimen 1..1
* effective[x] 1..1
* category 1..*
* subject 1..1

// cardinalities of used elements
* status 1..1
* code 1..1
* encounter 0..1
* hasMember 0..*
* value[x] 0..1

// further specification of elements
* effective[x] only dateTime
* value[x] only string or CodeableConcept

// binding to MIMIC terminology
* code from $MimicMicrobiologyTest

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
* hasMember only Reference(MimicObservationMicroOrg)