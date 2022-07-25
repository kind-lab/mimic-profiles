Profile:        MimicObservationED
Parent:         Observation
Id:             mimic-observation-ed
Title:          "MIMIC-ED Observation"
Description:    "An Observation resource that represents a single measurement from a row of the triage and vitalsign tables of MIMIC-ED: only pain, acuity, chiefcomplaint, and rhythm."

// Cardinalities used elements
* partOf 1..1 // Reference(Procedure)
* status 1..1 // final
* subject 1..1 // Reference(Patient)
* encounter 0..1 
* effective[x] 1..1
* effectiveDateTime 1..1 // edstays:intime (triage) or vitalsign:charttime (for vital signs)
* category 0..1
* code 1..1
* value[x] 0..1
* dataAbsentReason 0..1

// Further specification of elements
* partOf only Reference(MimicProcedureED)
* status = http://hl7.org/fhir/observation-status#final "Final"
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
* effective[x] only dateTime

// Pain, acuity, chiefcomplaint, rhythm
* category from MimicObservationCategoryED
* code from MimicObservationType
* dataAbsentReason from DataAbsentReason

// Value sets
ValueSet: MimicObservationCategoryED
Id: mimic-observation-category-ed
Title: "MIMIC-ED Observation Resource Category Value Set"
Description: "Selected codes from the ObservationCategoryCodes value set."
* http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey" // pain
* http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam" // rhythm

ValueSet: MimicObservationType
Id: mimic-observation-type
Title: "MIMIC-ED Observation Resource Types Value Set"
Description: "Selected codes from LOINC that represent values from the triage or vitalsigns tables of MIMIC-ED."
* $LNC#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported" // pain
* $LNC#56839-4 "Acuity assessment Narrative" // acuity
* $LNC#8884-9 "Heart rate rhythm" // rhythm
* $LNC#8661-1 "Chief complaint - Reported" // chiefcomplaint
