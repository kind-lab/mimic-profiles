Instance: ExampleMimicObservationLabevents
InstanceOf: MimicObservationLabevents
Usage: #example

* extension.url = "http://fhir.mimic.mit.edu/StructureDefinition/lab-priority" 
* extension.valueString = "STAT"
* identifier.system = $IdentifierObservationLabevents
* identifier.value = "284911"
* status = #final
* category = $MimicObservationCategory_CS#laboratory
* code = $MimicDLabitems_CS#50885 "Bilirubin, Total"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleEncounterMimic)
* effectiveDateTime = "2174-12-16T15:20:00-05:00"
* issued = "2174-12-16T17:10:00-05:00"
* valueQuantity = 1.3 $MimicUnits#mg/dL "mg/dL"
* specimen = Reference(ExampleMimicSpecimen)
* referenceRange.low = 0 $MimicUnits#mg/dL "mg/dL"
* referenceRange.high = 1.5 $MimicUnits#mg/dL "mg/dL"