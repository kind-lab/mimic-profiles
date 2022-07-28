Profile:        MimicEncounter
Parent:         us-core-encounter
Id:             mimic-encounter
Title:          "MIMIC Encounter"
Description:    "A MIMIC encounter profile based on US Core Encounter."

// cardinalities of updated elements
* identifier 1..*
* period 1..1
* period.start 1..1 
* period.end 1..1 

// cardinalities of used elements
* status 1..1
* class 1..1
* type 1..*
* serviceType 0..1
* priority 0..1
* subject 1..1
* hospitalization.dischargeDisposition 0..1
* hospitalization.admitSource 0..1
* location 0..*
* serviceProvider 0..1 
* partOf 0..1

// set default elements
* status = $HL7EncounterStatus#finished "Finished"

// Identifier slicing
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Patient identifier.system slicing"

* identifier contains
  HOSP_ID 0..1 
  and ED_ID 0..1
  and ICU_ID 0..1
* identifier[HOSP_ID].system 1..1
* identifier[HOSP_ID].system = $IdentifierEncounterHSP 
* identifier[HOSP_ID].value ^short = "Hospital encounter identifier"
* identifier[HOSP_ID].value obeys mimic-encounter-id
* identifier[HOSP_ID].value 1..1

* identifier[ED_ID].system 1..1
* identifier[ED_ID].system = $IdentifierEncounterED
* identifier[ED_ID].value ^short = "ED encounter identifier"
* identifier[ED_ID].value obeys mimic-encounter-id
* identifier[ED_ID].value 1..1

* identifier[ICU_ID].system 1..1
* identifier[ICU_ID].system = $IdentifierEncounterICU
* identifier[ICU_ID].value ^short = "ICU encounter identifier"
* identifier[ICU_ID].value obeys mimic-encounter-id
* identifier[ICU_ID].value 1..1


// Bind MIMIC terminology
* type from $MimicEncounterType
* serviceType from $MimicServices
* hospitalization.admitSource from $MimicAdmitSource
* hospitalization.dischargeDisposition from $MimicDischargeDisposition

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* partOf only Reference(MimicEncounter)
* serviceProvider only Reference(MimicOrganization)

Invariant: mimic-encounter-id
Description: "Identifier must be a 8 digit numeric value"
Severity: #error
Expression: "value.matches('^[0-9]{8}$')"
