Instance: ExampleMimicProcedure
InstanceOf: MimicProcedure
Title: "Example Procedure resource MIMIC-IV"
Description: "An example of how a MIMIC-IV Procedure resource would look like."
Usage: #example

* status = #completed
* code = $MimicProcedureICD9_CS#9915 "Parenteral infusion of concentrated nutritional substances"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* performedDateTime = "2136-04-11T00:00:00-04:00"