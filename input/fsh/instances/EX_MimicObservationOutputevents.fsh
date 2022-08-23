Instance: ExampleMimicObservationOutputevents
InstanceOf: MimicObservationOutputevents
Usage: #example

* status = #final
* category = $MimicObservationCategory_CS#Output
* code = $MimicDItems_CS#226559 "Foley"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* effectiveDateTime = "2133-12-23T12:00:00-05:00"
* issued = "2133-12-23T11:55:00-05:00"
* valueQuantity = 250 $MimicUnits#ml "ml"