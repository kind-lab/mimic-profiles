// Instance
Instance:       ExampleMimicConditionED
InstanceOf:     MimicCondition
Title:          "Example Condition MIMIC-ED"
Description:    "An example of how a MIMIC-ED Condition resource would look like."
Usage:          #example

* subject = Reference(ExampleMimicPatientED)
* encounter = Reference(ExampleMimicEncounterED)
* code = $MimicDiagnosisIcd9#V08 "Asymptomatic human immunodeficiency virus [HIV] infection status"
