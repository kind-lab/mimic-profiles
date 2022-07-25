Profile:        MimicObservationVitalSigns
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs
Id:             mimic-observation-vitalsigns
Title:          "MIMIC-ED Observation Vital Signs"
Description:    "An Observation resource (based on US Core Vital Signs) that represents a single measurement from a row of the triage and vitalsign tables of MIMIC-ED: only temperatature, heartrate, resprate, blood pressure sbp dbp, and o2sat."

// Cardinalities used elements
* partOf 1..1 // Reference(Procedure)
* status 1..1 // final
* subject 1..1 // Reference(Patient)
* encounter 1..1 // Reference(Encounter)
* effective[x] 1..1 
* effectiveDateTime 1..1 // edstays:intime (triage) or vitalsign:charttime (for vital signs)
* category 1..1
* code 1..1
* value[x] 0..1
* dataAbsentReason 0..1
* component 0..2

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

// Value sets
ValueSet: MimicObservationTypeVital
Id: mimic-observation-type-vital
Title: "MIMIC-ED Observation Resource Types Value Set"
Description: "Selected codes from LOINC that represent values from the triage or vitalsigns tables of MIMIC-ED."
* $LNC#8310-5 "Body temperature" // temp
* $LNC#8867-4 "Heart rate" // heartrate
* $LNC#9279-1 "Respiratory rate" // resprate
* $LNC#2708-6 "Oxygen saturation in Arterial blood" // o2sat
* $LNC#85354-9 "Blood pressure panel with all children optional" // sbp and dbp (component)

ValueSet: MimicQuantityUnit
Id: mimic-unit-quantity
Title: "MIMIC-ED Observation Quantity Units Value Set"
Description: "Selected codes from UCUM that represent quantity units."
* $UCUM#degF "F" // triage:temperature / vitalsign:temperature
* $UCUM#/min "beats/minute" // triage:heartrate / vitalsign:heartrate
* $UCUM#/min "breaths/minute" // triage:resprate / vitalsign: resprate
* $UCUM#% "%" // triage:o2sat / vitalsign:o2sat

ValueSet: DataAbsentReason
Id: mimic-dateAbsentReason
Title: "MIMIC-ED Data Absent Reason"
Description: "Selected code from the DataAbsentReason value set."
* http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown "Unknown"
