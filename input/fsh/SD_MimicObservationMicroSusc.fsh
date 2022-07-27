Profile:        MimicObservationMicroSusc
Parent:         Observation
Id:             mimic-observation-micro-susc
Title:          "MIMIC Observation Micro Susc"
Description:    "A MIMIC observation microbiology susceptiblity profile based on the base observation resource"

// cardinalities of updated elements
* effective[x] 1..1
* value[x] 1..1
* derivedFrom 1..1

// cardinalities of used elements
* status 1..1
* category 1..*
* code 1..1
* subject 1..1
* note 0..1

// further specification of elements
* value[x] only CodeableConcept
* effective[x] only dateTime

// binding to MIMIC terminology
* identifier.system = $IdentifierObservationMicroSusc
* code from $MimicMicrobiologyAntibiotic
* interpretation from MimicMicroInterpretation
* extension contains DilutionDetails named dilutionDetails 0..1

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* derivedFrom only Reference(MimicObservationMicroOrg)

Extension: DilutionDetails
Id: dilution-details
Title: "Dilution Details"
Description: "The dilution details for microbiology susceptiblity tests"
* value[x] only Quantity
