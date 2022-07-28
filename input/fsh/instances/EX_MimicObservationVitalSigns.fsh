// Instance
Instance:       ExampleMimicObservationVitalSigns
InstanceOf:     MimicObservationVitalSigns
Title:          "Example Observation for a vital sign measurement"
Description:    "An example of how a MIMIC-ED Observation resource would look like with data from the vitalsigns table."
Usage:          #example

* partOf = Reference(ExampleMimicProcedureED)
* status = http://hl7.org/fhir/observation-status#final "Final"
* subject = Reference(ExampleMimicPatientED)
* encounter = Reference(ExampleMimicEncounterED)
* effectiveDateTime = 2116-06-10T00:32:00.000Z
* code = $LNC#85354-9 "Blood pressure panel with all children optional"
* component[+].code.coding[+] = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].code.coding[+] = http://snomed.info/sct#271649006 "Systolic blood pressure"
* component[=].code.coding[+] = http://acme.org/devices/clinical-codes#bp-s "Systolic Blood pressure"
* component[=].valueQuantity = 106 'mm[Hg]' "mmHg"
* component[+].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 72 'mm[Hg]' "mmHg"
