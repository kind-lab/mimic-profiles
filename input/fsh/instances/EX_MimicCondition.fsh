Instance: ExampleMimicCondition
InstanceOf: MimicCondition
Title: "Example Condition resource MIMIC-IV"
Description: "An example of how a MIMIC-IV Condition resource would look like."
Usage: #example

* code = $MimicDiagnosisIcd10#Z8546 "Personal history of malignant neoplasm of prostate"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)