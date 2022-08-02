Instance: ExampleMimicObservationDatetimeevents
InstanceOf: MimicObservationDatetimeevents
Usage: #example

* identifier.system = $IdentifierObservationDatetimeevents
* identifier.value = "33060379-2147-11-18 08:33:00-228166"
* status = #final
* category = $MimicObservationCategory_CS#"Access Lines - Invasive"
* code = $MimicDItems_CS#228166 "Impella Dressing Change"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* effectiveDateTime = "2147-11-18T08:33:00-05:00"
* issued = "2147-11-18T12:33:00-05:00"
* valueDateTime = "2147-11-18T00:00:00-05:00"