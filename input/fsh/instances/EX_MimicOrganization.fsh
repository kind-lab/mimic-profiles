Instance: ExampleMimicOrganization
InstanceOf: MimicOrganization
Title: "Example Organization resource MIMIC-IV"
Description: "An example of how a MIMIC-IV Organization resource would look like."
Usage: #example

* identifier.system = $IdentifierOrganization
* identifier.value = "1194052720"
* active = true
* type = $HL7OrganizationType#prov "Healthcare Provider"
* name = "Beth Israel Deaconess Medical Center"