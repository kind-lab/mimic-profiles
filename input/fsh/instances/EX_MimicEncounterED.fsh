// Instance
Instance:       ExampleMimicEncounterED
InstanceOf:     MimicEncounter
Title:          "Example Encounter resource MIMIC-IV-ED"
Description:    "An example of how a MIMIC-IV-ED Encounter resource would look like."
Usage:          #example

* identifier.system = $IdentifierEncounterED
* identifier.value = "22429197"
* period.start = 2147-12-30T06:45:00-05:00
* period.end = 2147-12-30T09:33:00-05:00
* subject = Reference(ExampleMimicPatientED)
* diagnosis.rank = 1
* diagnosis.condition = Reference(ExampleMimicConditionED)
// * partOf = Reference(ExampleMimicEncounterAdmissionED)
* hospitalization.admitSource = $MimicAdmitSourceCS#AMBULANCE
* hospitalization.dischargeDisposition = $MimicDischargeDispositionCS#ADMITTED
* class = $HL7ActCode#EMER "emergency"
* type = $SCT#308335008 "Patient encounter procedure"