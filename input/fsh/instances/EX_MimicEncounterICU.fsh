Instance: ExampleMimicEncounterICU
InstanceOf: MimicEncounter
Title: "Example Encounter resource MIMIC-IV-ICU"
Description: "An example of how a MIMIC-IV-ICU Encounter resource would look like."
Usage: #example

* identifier.system = $IdentifierEncounterICU
* identifier.value = "31552399"
* class = $HL7ActCode#ACUTE
* type = $SCT#308335008 "Patient encounter procedure"
* subject = Reference(ExampleMimicPatient)
* period.start = "2177-07-14T20:38:00-04:00"
* period.end = "2177-07-15T16:08:36-04:00"
* location.location = Reference(ExampleLocation)
* location.period.start = "2177-07-14T20:38:00-04:00"
* location.period.end = "2177-07-15T16:08:36-04:00"
* partOf = Reference(ExampleMimicEncounter)