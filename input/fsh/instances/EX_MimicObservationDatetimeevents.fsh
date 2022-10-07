Instance: ExampleMimicObservationDatetimeevents
InstanceOf: MimicObservationDatetimeevents
Title: "Example Observation datetimeevents resource MIMIC-IV"
Description: "An example of how a MIMIC-IV Observation datetimeevents resource would look like."
Usage: #example

* status = #final
* category = $MimicObservationCategory_CS#"Access Lines - Invasive"
* code = $MimicDItems_CS#228166 "Impella Dressing Change"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* effectiveDateTime = "2147-11-18T08:33:00-05:00"
* issued = "2147-11-18T12:33:00-05:00"
* valueDateTime = "2147-11-18T00:00:00-05:00"