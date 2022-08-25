Profile:        MimicObservationVitalSigns
Parent:         us-core-vital-signs
Id:             mimic-observation-vital-signs
Title:          "MIMIC-ED Observation Vital Signs"
Description:    "An Observation resource (based on US Core Vital Signs) that represents a single measurement from a row of the triage and vitalsign tables of MIMIC-ED: only pain, temperature, heartrate, resprate, blood pressure sbp dbp, and o2sat."

// cardinalities of updated elements
* partOf 1..1 // Reference(Procedure)
* encounter 1..1 // Reference(Encounter)
* component 0..2

// cardinalities of used elements
* status 1..1 // final
* subject 1..1 // Reference(Patient)
* effective[x] 1..1 // edstays:intime (triage) or vitalsign:charttime (for vital signs)
* category 1..*
* code 1..1
* value[x] 0..1
* dataAbsentReason 0..1

// further specification of elements
* status = $ObservationStatus#final "Final"
* category = $ObservationCategory#vital-signs "Vital Signs"
* effective[x] only dateTime
* value[x] only Quantity

// binding to terminology
* code from MimicObservationTypeVital
* dataAbsentReason from DataAbsentReason

// referencing MIMIC resources
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
* partOf only Reference(MimicProcedureED)
