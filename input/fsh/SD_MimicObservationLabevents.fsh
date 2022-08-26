Profile:        MimicObservationLabevents
Parent:         us-core-observation-lab
Id:             mimic-observation-labevents
Title:          "MIMIC Observation Labevents"
Description:    "A MIMIC observation labevents profile based on base observation resource"

// cardinalities of updated elements
* identifier 1..*
* subject 1..1
* effective[x] 1..1
* specimen 1..1

// cardinalities of used elements
* status 1..1
* code 1..1
* category 1..*
* encounter 0..1
* issued 0..1
* interpretation 0..*
* note 0..*
* referenceRange.low 0..1
* referenceRange.high 0..1

// further specification of elements
* value[x] only string or Quantity
* effective[x] only dateTime

// binding to MIMIC terminology
* identifier.system = $IdentifierObservationLabevents
* code from $MimicDLabitems
* interpretation from MimicLabInterpretation

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
* specimen only Reference(MimicSpecimen)

* extension contains LabPriority named labPriority 0..1

Extension: LabPriority
Id: lab-priority
Title: "Lab Priority"
Description: "The priority of a lab item in MIMIC"
* value[x] from $MimicLabPriority
* value[x] only string
