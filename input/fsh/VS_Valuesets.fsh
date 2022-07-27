// Microbiology
ValueSet: MimicMicroInterpretation
Id: mimic-micro-interpretation
Title: "MIMIC Observation Lab interpretation Value Set"
Description: "Selected codes from ObservationInterpretation that represent interpretations in MIMIC."
* $INTERP#IE "Insufficient evidence"
* $INTERP#IND "Indeterminate"
* $INTERP#R "Resistant"
* $INTERP#S "Susceptible"

// Labs
ValueSet: MimicLabInterpretation
Id: mimic-lab-interpretation
Title: "MIMIC Observation Lab interpretation Value Set"
Description: "Selected codes from ObservationInterpretation that represent interpretations in MIMIC."
* $INTERP#A "Abnormal" 

// ED Observation
ValueSet: MimicObservationTypeVital
Id: mimic-observation-type-vital
Title: "MIMIC-ED Observation Resource Types Value Set"
Description: "Selected codes from LOINC that represent values from the triage or vitalsigns tables of MIMIC-ED."
* $LNC#8310-5 "Body temperature" // temp
* $LNC#8867-4 "Heart rate" // heartrate
* $LNC#9279-1 "Respiratory rate" // resprate
* $LNC#2708-6 "Oxygen saturation in Arterial blood" // o2sat
* $LNC#85354-9 "Blood pressure panel with all children optional" // sbp and dbp (component)
* $LNC#98137-3 "Pain severity - Reported" // pain

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

ValueSet: MimicObservationCategoryED
Id: mimic-observation-category-ed
Title: "MIMIC-ED Observation Resource Category Value Set"
Description: "Selected codes from the ObservationCategoryCodes value set."
* http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey" // pain
* http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam" // rhythm

ValueSet: MimicObservationTypeED
Id: mimic-observation-type-ed
Title: "MIMIC-ED Observation Resource Types Value Set"
Description: "Selected codes from LOINC that represent values from the triage or vitalsigns tables of MIMIC-ED."
* $LNC#56839-4 "Acuity assessment Narrative" // acuity
* $LNC#8884-9 "Heart rate rhythm" // rhythm
* $LNC#8661-1 "Chief complaint - Reported" // chiefcomplaint


// ED Procedures
ValueSet: MimicProcedureTypesED
Id: mimic-procedure-types-ed
Title: "MIMIC-ED Procedure Code Types Value Set"
Description: "Selected codes from SNOMED CT that represent either triage or vitalsign measurements."
* $SCT#386478007 "Triage: emergency center (procedure)" // triage
* $SCT#410188000 "Taking patient vital signs assessment (procedure)" // vital signs