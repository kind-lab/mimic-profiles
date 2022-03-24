Profile:        MIMIC_Observation_Lab
Parent:         us-core-observation-lab
Id:             mimic-observation-lab
Title:          "MIMIC Observation Lab"
Description:    "A MIMIC observation lab profile based on US Core observation lab profile"

* code from http://fhir.mimic.mit.edu/ValueSet/d-labitems
* interpretation from http://fhir.mimic.mit.edu/ValueSet/lab-flags

* extension contains LabPriority named labPriority 0..1

Extension: LabPriority
Id: lab-priority
Title: "Lab Priority"
Description: "The priority of a lab item in MIMIC"
* value[x] from http://fhir.mimic.mit.edu/ValueSet/lab-priority
* value[x] only string
