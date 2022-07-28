// Instance
Instance:       ExampleMimicPatientED
InstanceOf:     MimicPatient
Title:          "Example Patient MIMIC-ED"
Description:    "An example of how a MIMIC-ED Patient resource would look like."
Usage:          #example

* identifier.value = "16113983"
* name.given.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.given.extension.valueCode = #unknown
* gender = http://hl7.org/fhir/administrative-gender#female "Female"
* extension[race].extension[text].valueString = "HISPANIC/LATINO - PUERTO RICAN"