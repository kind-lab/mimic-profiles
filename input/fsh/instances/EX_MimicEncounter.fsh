Instance: ExampleMimicEncounter
InstanceOf: MimicEncounter
Usage: #example

* identifier.system = $IdentifierEncounterHSP
* identifier.value = "22429197"
* identifier.assigner = Reference(ExampleMimicOrganization)

* class = $MimicAdmissionClassCS#"EW EMER."
* type = $SCT#308335008 "Patient encounter procedure"
* serviceType = $MimicServicesCS#TRAUM
* priority = $MimicAdmissionTypeCS#"EW EMER."
* subject = Reference(ExampleMimicPatient)
* period.start = "2147-12-30T08:40:00-05:00"
* period.end = "2148-01-11T17:55:00-05:00"
* hospitalization.admitSource = $MimicAdmitSourceCS#"EMERGENCY ROOM"
* hospitalization.dischargeDisposition = $MimicDischargeDispositionCS#REHAB
* location[0].location = Reference(ExampleLocation)
* location[=].period.start = "2147-12-30T06:45:00-05:00"
* location[=].period.end = "2147-12-30T09:33:00-05:00"
// * location[+].location = Reference(Location/)
// * location[=].period.start = "2147-12-30T09:33:00-05:00"
// * location[=].period.end = "2148-01-02T23:24:32-05:00"
// * location[+].location = Reference(Location/)
// * location[=].period.start = "2148-01-02T23:24:32-05:00"
// * location[=].period.end = "2148-01-08T18:14:21-05:00"
// * location[+].location = Reference(Location/)
// * location[=].period.start = "2148-01-08T18:14:21-05:00"
// * location[=].period.end = "2148-01-11T17:55:24-05:00"
* serviceProvider = Reference(ExampleMimicOrganization)