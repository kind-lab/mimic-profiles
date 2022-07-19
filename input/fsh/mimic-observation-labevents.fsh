Profile:        MIMIC_Observation_Labevents
Parent:         us-core-observation-lab
Id:             mimic-observation-labevents
Title:          "MIMIC Observation Labevents"
Description:    "A MIMIC observation labevents profile based on US Core observation lab profile"

* code from http://fhir.mimic.mit.edu/ValueSet/d-labitems
* interpretation from http://fhir.mimic.mit.edu/ValueSet/lab-flags

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
* specimen only Reference(MimicSpecimen)

* extension contains LabPriority named labPriority 0..1

Extension: LabPriority
Id: lab-priority
Title: "Lab Priority"
Description: "The priority of a lab item in MIMIC"
* value[x] from http://fhir.mimic.mit.edu/ValueSet/lab-priority
* value[x] only string
