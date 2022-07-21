Profile:        MimicEncounter
Parent:         us-core-encounter
Id:             mimic-encounter
Title:          "MIMIC Encounter"
Description:    "A MIMIC encounter profile based on US Core Encounter."

* identifier 1..*
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
* identifier[ED_ID].system = $IdentiferEncounterED
* identifier[ED_ID].value ^short = "ED encounter identifier"
* identifier[ED_ID].value obeys mimic-encounter-id
* identifier[ED_ID].value 1..1

* identifier[ICU_ID].system 1..1
* identifier[ICU_ID].system = $IdentiferEncounterICU
* identifier[ICU_ID].value ^short = "ICU encounter identifier"
* identifier[ICU_ID].value obeys mimic-encounter-id
* identifier[ICU_ID].value 1..1

* class from $MimicAdmissionClass
* type from $MimicEncounterType
* serviceType from $MimicServices
* priority from $MimicAdmissionType
* hospitalization.admitSource from $MimicAdmitSource
* hospitalization.dischargeDisposition from $MimicDischargeDisposition

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* partOf only Reference(MimicEncounter)

Invariant: mimic-encounter-id
Description: "Identifier must be a 8 digit numeric value"
Severity: #error
Expression: "value.matches('^[0-9]{8}$')"
