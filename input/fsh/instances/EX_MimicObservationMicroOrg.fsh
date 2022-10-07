Instance: ExampleMimicObservationMicroOrg
InstanceOf: MimicObservationMicroOrg
Title: "Example Observation microbiology organism resource MIMIC-IV"
Description: "An example of how a MIMIC-IV Observation microbiology organism resource would look like."
Usage: #example

* status = #final
* category = $ObservationCategory#laboratory "Laboratory"
* code = $MimicMicrobiologyOrganism_CS#80023 "STAPH AUREUS COAG +"
* subject = Reference(ExampleMimicPatient)
* effectiveDateTime = "2174-12-04T13:34:00-05:00"
* valueString = "Example"
* hasMember[0] = Reference(ExampleMimicObservationMicroSusc)
* derivedFrom = Reference(ExampleMimicObservationMicroTest)