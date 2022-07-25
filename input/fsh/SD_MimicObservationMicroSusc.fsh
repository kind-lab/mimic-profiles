Profile:        MimicObservationMicroSusc
Parent:         us-core-observation-lab
Id:             mimic-observation-micro-susc
Title:          "MIMIC Observation Micro Susc"
Description:    "A MIMIC observation microbiology susceptiblity profile based on US Core observation lab profile"

// cardinalities of used elements
* identifier 1..1
* status 1..1
* category 1..1
* code 1..1
* subject 1..1
* effectiveDateTime 1..1
* valueCodeableConcept 1..1
* derivedFrom 1..1
* note 0..1

// binding to MIMIC terminology
* identifier.system = $IdentifierObservationMicroSusc
* code from $MimicMicrobiologyAntibiotic
* interpretation from $MimicMicrobiologyInterpretation
* extension contains DilutionDetails named dilutionDetails 0..1

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* derivedFrom only Reference(MimicObservationMicroOrg)

Extension: DilutionDetails
Id: dilution-details
Title: "Dilution Details"
Description: "The dilution details for microbiology susceptiblity tests"
* value[x] only Quantity
