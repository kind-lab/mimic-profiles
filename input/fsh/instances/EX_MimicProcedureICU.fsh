Instance: ExampleMimicProcedureICU
InstanceOf: MimicProcedureICU
Title: "Example Procedure resource MIMIC-IV-ICU"
Description: "An example of how a MIMIC-IV-ICU Procedure resource would look like."
Usage: #example

* status = #completed
* category = $MimicProcedureCategory_CS#"Significant Events"
* code = $MimicDItems_CS#225469 "OR Received"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* performedPeriod.start = "2130-10-27T17:00:00-04:00"
* performedPeriod.end = "2130-10-27T17:01:00-04:00"