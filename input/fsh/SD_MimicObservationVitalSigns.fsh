Profile:        MimicObservationVitalSigns
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs
Id:             mimic-observation-vital-signs
Title:          "MIMIC-ED Observation Vital Signs"
Description:    "An Observation resource (based on US Core Vital Signs) that represents a single measurement from a row of the triage and vitalsign tables of MIMIC-ED: only temperatature, heartrate, resprate, blood pressure sbp dbp, and o2sat."

// cardinalities of updated elements
* partOf 1..1 // Reference(Procedure)
* encounter 1..1 // Reference(Encounter)
* effectiveDateTime 1..1 // edstays:intime (triage) or vitalsign:charttime (for vital signs)
* component 0..2

// cardinalities of used elements
* status 1..1 // final
* subject 1..1 // Reference(Patient)
* category 1..*
* code 1..1
* value[x] 0..1
* dataAbsentReason 0..1

// Further specification of elements
* partOf only Reference(MimicProcedureED)
* status = http://hl7.org/fhir/observation-status#final "Final"
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
* effective[x] only dateTime

// Vitalsigns
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code from MimicObservationTypeVital
* value[x] only Quantity
* value[x] from MimicQuantityUnit
* dataAbsentReason from DataAbsentReason
