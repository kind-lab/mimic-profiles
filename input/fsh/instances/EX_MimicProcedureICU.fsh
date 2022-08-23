Instance: ExampleMimicProcedureICU
InstanceOf: MimicProcedureICU
Usage: #example

* status = #completed
* category = $MimicProcedureCategory_CS#"Significant Events"
* code = $MimicDItems_CS#225469 "OR Received"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* performedPeriod.start = "2130-10-27T17:00:00-04:00"
* performedPeriod.end = "2130-10-27T17:01:00-04:00"