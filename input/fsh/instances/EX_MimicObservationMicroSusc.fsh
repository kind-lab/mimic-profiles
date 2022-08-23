Instance: ExampleMimicObservationMicroSusc
InstanceOf: MimicObservationMicroSusc
Usage: #example

* extension.url = "http://fhir.mimic.mit.edu/StructureDefinition/dilution-details"
* extension.valueQuantity.value = 4
* extension.valueQuantity.comparator = #<=
* status = #final
* category = $ObservationCategory#laboratory "Laboratory"
* code = $MimicMicrobiologyAntibiotic_CS#90005 "CEFAZOLIN"
* subject = Reference(ExampleMimicPatient)
* effectiveDateTime = "2181-08-25T12:56:00-04:00"
* valueCodeableConcept = $ObservationInterpretation_CS#S
* derivedFrom = Reference(ExampleMimicObservationMicroOrg)