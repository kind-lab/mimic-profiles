Instance: ExampleMimicSpecimen
InstanceOf: MimicSpecimen
Title: "Example Specimen resource MIMIC-IV"
Description:    "An example of how a MIMIC-IV Specimen resource would look like."
Usage: #example

* identifier.system = $IdentifierSpecimenLab
* identifier.value = "76856812"
* type = $MimicLabFluid#Blood
* subject = Reference(ExampleMimicPatient)
* collection.collectedDateTime = "2142-07-31T18:20:00-04:00"