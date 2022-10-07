Instance: ExampleMimicObservationChartevents
InstanceOf: MimicObservationChartevents
Title: "Example Observation chartevents resource MIMIC-IV"
Description: "An example of how a MIMIC-IV Observation chartevents resource would look like."
Usage: #example

* status = #final
* category = $MimicObservationCategory_CS#"Care Plans"
* code = $MimicCharteventsDItems_CS#228988 "Safety Restraints NCP - Interventions"
* subject = Reference(ExampleMimicPatient)
* encounter = Reference(ExampleMimicEncounter)
* effectiveDateTime = "2175-03-25T13:52:00-04:00"
* issued = "2175-03-25T13:55:00-04:00"
* valueString = "Clear patient's environment of safety hazards (conceal tubing, cords, etc. and overdress IVs)"