Instance: ExampleMimicObservationMicroSusc
InstanceOf: MimicObservationMicroSusc
Title: "Example Observation microbiology susceptiblity resource MIMIC-IV"
Description: "An example of how a MIMIC-IV Observation microbiology susceptiblity resource would look like."
Usage: #example

* identifier.system = $IdentifierObservationMicroSusc
* identifier.value = "12345"
* extension.url = "http://mimic.mit.edu/fhir/StructureDefinition/dilution-details"
* extension.valueQuantity.value = 4
* extension.valueQuantity.comparator = #<=
* status = #final
* category = $ObservationCategory#laboratory "Laboratory"
* code = $MimicMicrobiologyAntibiotic_CS#90005 "CEFAZOLIN"
* subject = Reference(ExampleMimicPatient)
* effectiveDateTime = "2181-08-25T12:56:00-04:00"
* valueCodeableConcept = $ObservationInterpretation_CS#S
* derivedFrom = Reference(ExampleMimicObservationMicroOrg)