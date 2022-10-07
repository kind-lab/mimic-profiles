// Instance
Instance:       ExampleMimicConditionED
InstanceOf:     MimicCondition
Title:          "Example Condition resource MIMIC-IV-ED"
Description:    "An example of how a MIMIC-IV-ED Condition resource would look like."
Usage:          #example

* subject = Reference(ExampleMimicPatientED)
* encounter = Reference(ExampleMimicEncounterED)
* code = $MimicDiagnosisIcd9#20500 "Acute myeloid leukemia, without mention of having achieved remission"
