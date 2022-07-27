Profile:        MimicObservationED
Parent:         Observation
Id:             mimic-observation-ed
Title:          "MIMIC-ED Observation"
Description:    "An Observation resource that represents a single measurement from a row of the triage and vitalsign tables of MIMIC-ED: only acuity, chiefcomplaint, and rhythm."

// cardinalities of update elements
* partOf 1..1 // Reference(Procedure)
* subject 1..1 // Reference(Patient)
* encounter 1..1 
* effective[x] 1..1
* effectiveDateTime 1..1 // edstays:intime (triage) or vitalsign:charttime (for vital signs)

// cardinalities of used elements
* status 1..1 // final
* category 0..1
* code 1..1
* value[x] 0..1
* valueQuantity 0..1
* dataAbsentReason 0..1

// further specification of elements
* status = http://hl7.org/fhir/observation-status#final "Final"
* effective[x] only dateTime

// binding to MIMIC terminology
* category from MimicObservationCategoryED
* code from MimicObservationTypeED
* dataAbsentReason from DataAbsentReason

// referencing MIMIC profiles
* partOf only Reference(MimicProcedureED)
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
