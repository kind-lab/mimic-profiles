// Instance
Instance:       ExampleMimicObservationVitalSigns
InstanceOf:     MimicObservationVitalSigns
Title:          "Example Observation for a vital sign measurement"
Description:    "An example of how a MIMIC-ED Observation resource would look like with data from the vitalsigns table."
Usage:          #example

* partOf = Reference(ExampleMimicProcedureED)
* category = $ObservationCategory#vital-signs "Vital Signs"
* status = http://hl7.org/fhir/observation-status#final "Final"
* subject = Reference(ExampleMimicPatientED)
* encounter = Reference(ExampleMimicEncounterED)
* effectiveDateTime = 2116-06-10T00:32:00.000Z
* code = $LNC#85354-9 "Blood pressure panel with all children optional"
* component[+].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 106 'mm[Hg]' "mmHg"
* component[+].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 72 'mm[Hg]' "mmHg"
