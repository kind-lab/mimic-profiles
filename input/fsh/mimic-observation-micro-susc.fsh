Profile:        MimicObservationMicroSusc
Parent:         us-core-observation-lab
Id:             mimic-observation-micro-susc
Title:          "MIMIC Observation Micro Susc"
Description:    "A MIMIC observation microbiology susceptiblity profile based on US Core observation lab profile"

* code from http://fhir.mimic.mit.edu/ValueSet/microbiology-antibiotic
* interpretation from http://fhir.mimic.mit.edu/ValueSet/microbiology-interpretation
* extension contains DilutionDetails named dilutionDetails 0..1

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* derivedFrom only Reference(MimicObservationMicroOrg)

Extension: DilutionDetails
Id: dilution-details
Title: "Dilution Details"
Description: "The dilution details for microbiology susceptiblity tests"
* value[x] only Quantity
