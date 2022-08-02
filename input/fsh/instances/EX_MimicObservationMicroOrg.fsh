Instance: ExampleMimicObservationMicroOrg
InstanceOf: MimicObservationMicroOrg
Usage: #example

* identifier.system = $IdentifierObservationMicroOrg
* identifier.value = "90055-1715807-80023"
* status = #final
* category = $MimicObservationCategory_CS#laboratory
* code = $MimicMicrobiologyOrganism_CS#80023 "STAPH AUREUS COAG +"
* subject = Reference(ExampleMimicPatient)
* effectiveDateTime = "2174-12-04T13:34:00-05:00"
* valueString = "Example"
* hasMember[0] = Reference(ExampleMimicObservationMicroSusc)
* derivedFrom = Reference(ExampleMimicObservationMicroTest)