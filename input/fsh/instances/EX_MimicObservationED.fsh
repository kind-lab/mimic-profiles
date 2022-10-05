// Instance
Instance:       ExampleMimicObservationED
InstanceOf:     MimicObservationED
Title:          "Example Observation resource MIMIC-IV-ED"
Description:    "An example of how a MIMIC-IV-ED Observation resource would look like with data from the triage table (chiefcomplaint)."
Usage:          #example

// Further specification of elements
* partOf = Reference(ExampleMimicProcedureED)
* subject = Reference(ExampleMimicPatientED)
* encounter = Reference(ExampleMimicEncounterED)
* effectiveDateTime = 2154-12-10T02:04:00.000Z
* code = $LNC#8661-1 "Chief complaint - Reported" // chiefcomplaint
* valueString = "Abdominal distention"