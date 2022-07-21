Profile:        MimicProcedureED
Parent:         us-core-procedure
Id:             mimic-procedure-ed
Title:          "MIMIC Procedure ICU"
Description:    "A MIMIC procedure ICU profile based on US Core Procedure."

* identifier.system = $IdentifierProcedureED
* code from MimicProcedureTypes
* status = http://hl7.org/fhir/event-status#completed "Completed"
* performed[x] only dateTime

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)

// Value sets
ValueSet: MimicProcedureTypes
Id: mimic-procedure-types
Title: "MIMIC-ED Procedure Code Types Value Set"
Description: "Selected codes from SNOMED CT that represent either triage or vitalsign measurements."
* $SCT#386478007 "Triage: emergency center (procedure)" // triage
* $SCT#410188000 "Taking patient vital signs assessment (procedure)" // vital signs