Profile:        MimicObservationLabevents
Parent:         us-core-observation-lab
Id:             mimic-observation-labevents
Title:          "MIMIC Observation Labevents"
Description:    "A MIMIC observation labevents profile based on US Core observation lab profile"

* identifier.system = $IdentifierObservationLabevents
* code from $MimicDLabitems
* interpretation from $MimicLabFlags

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
