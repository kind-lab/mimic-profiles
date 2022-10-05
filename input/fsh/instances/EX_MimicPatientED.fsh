// Instance
Instance:       ExampleMimicPatientED
InstanceOf:     MimicPatient
Title:          "Example Patient resource MIMIC-IV-ED"
Description:    "An example of how a MIMIC-IV-ED Patient resource would look like."
Usage:          #example

* identifier.value = "10005866"
* name.given.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.given.extension.valueCode = #unknown
* gender = http://hl7.org/fhir/administrative-gender#female "Female"
* extension[race].extension[text].valueString = "HISPANIC/LATINO - PUERTO RICAN"