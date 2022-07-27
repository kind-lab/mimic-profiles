Profile:        MimicObservationMicroOrg
Parent:         us-core-observation-lab
Id:             mimic-observation-micro-org
Title:          "MIMIC Observation Micro Org"
Description:    "A MIMIC observation microbiology organism profile based on the base observation resource"

// cardinalities of updated elements
* effective[x] 1..1
* derivedFrom 1..1

// cardinalities of used elements
* status 1..1
* category 1..*
* code 1..1
* subject 1..1
* hasMember 0..1
* valueString 1..1

// further specification of elements
* effective[x] only dateTime
 
// binding to MIMIC terminology
* code from $MimicMicrobiologyOrganism

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* hasMember only Reference(MimicObservationMicroSusc)
* derivedFrom only Reference(MimicObservationMicroTest)
