Instance: ExampleMimicEncounterICU
InstanceOf: MimicEncounter
Usage: #example

* identifier.system = $IdentifierEncounterICU
* identifier.value = "31552399"
* class = $HL7ActCode#ACUTE
* type = $SCT#453701000124103 "In-person encounter (procedure)"
* subject = Reference(ExampleMimicPatient)
* period.start = "2177-07-14T20:38:00-04:00"
* period.end = "2177-07-15T16:08:36-04:00"
* location.location = Reference(ExampleLocation)
* location.period.start = "2177-07-14T20:38:00-04:00"
* location.period.end = "2177-07-15T16:08:36-04:00"
* partOf = Reference(ExampleMimicEncounter)