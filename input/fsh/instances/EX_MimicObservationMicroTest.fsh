Instance: ExampleMimicObservationMicroTest
InstanceOf: MimicObservationMicroTest
Usage: #example

* identifier.system = $IdentifierObservationMicroTest
* identifier.value = "6624369-90039"
* status = #final
* category = $MimicObservationCategory_CS#laboratory
* code = $MimicMicrobiologyTest_CS#90039 "URINE CULTURE"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleEncounterMimic)
* effectiveDateTime = "2111-01-20T22:23:00-05:00"
* valueString = "NO GROWTH.  "
* specimen = Reference(ExampleMimicSpecimen)