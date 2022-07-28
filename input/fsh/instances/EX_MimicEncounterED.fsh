// Instance
Instance:       ExampleMimicEncounterED
InstanceOf:     MimicEncounter
Title:          "Example Encounter MIMIC-ED"
Description:    "An example of how a MIMIC-ED Encounter resource would look like."
Usage:          #example

* identifier.system = $IdentifierEncounterED
* identifier.value = "38081480"
* period.start = 2154-12-10T02:04:00.000Z
* period.end = 2154-12-10T02:16:00.000Z
* subject = Reference(ExampleMimicPatientED)
* diagnosis.rank = 1
* diagnosis.condition = Reference(ExampleMimicConditionED)
// * partOf = Reference(ExampleMimicEncounterAdmissionED)
* hospitalization.admitSource.text = "AMBULANCE"
* hospitalization.dischargeDisposition.text = "ADMITTED"
* class = $HL7ActCode#EMER "emergency"
* type = $SCT#185347001 "Encounter for problem (procedure)"