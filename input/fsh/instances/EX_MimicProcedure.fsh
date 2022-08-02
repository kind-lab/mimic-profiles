Instance: ExampleMimicProcedure
InstanceOf: MimicProcedure
Usage: #example

* identifier.system = $IdentifierProcedure
* identifier.value = "28477357-1-9915"
* status = #completed
* code = $MimicProcedureICD9_CS#9915 "Parenteral infusion of concentrated nutritional substances"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* performedDateTime = "2136-04-11T00:00:00-04:00"