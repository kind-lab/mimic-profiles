Instance: ExampleMimicObservationOutputevents
InstanceOf: MimicObservationOutputevents
Title: "Example Observation outputevents resource MIMIC-IV"
Description: "An example of how a MIMIC-IV Observation outputevents resource would look like."
Usage: #example

* status = #final
* category = $MimicObservationCategory_CS#Output
* code = $MimicDItems_CS#226559 "Foley"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* effectiveDateTime = "2133-12-23T12:00:00-05:00"
* issued = "2133-12-23T11:55:00-05:00"
* valueQuantity = 250 $MimicUnits#ml "ml"