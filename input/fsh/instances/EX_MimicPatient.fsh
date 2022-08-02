Instance: ExampleMimicPatient
InstanceOf: MimicPatient
Usage: #example

* extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "White"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Not Hispanic or Latino"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[=].valueCode = #F
* identifier.value = "10000032"
* name.use = #official
* name.family = "Patient_10000032"
* gender = #female
* birthDate = "2128-05-06"
* deceasedDateTime = "2180-09-09"
* maritalStatus = $HL7MartialStatus#W
* communication.language = urn:ietf:bcp:47#en
* managingOrganization = Reference(ExampleMimicOrganization)