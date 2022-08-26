Instance: ExampleMimicObservationMicroTest
InstanceOf: MimicObservationMicroTest
Usage: #example

* status = #final
* category = $ObservationCategory#laboratory "Laboratory"
* code = $MimicMicrobiologyTest_CS#90039 "URINE CULTURE"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* effectiveDateTime = "2111-01-20T22:23:00-05:00"
* valueString = "NO GROWTH"
* specimen = Reference(ExampleMimicSpecimen)