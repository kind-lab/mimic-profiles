Instance: ExampleLocation
InstanceOf: MimicLocation
Title: "Example Location resource MIMIC-IV"
Description: "An example of how a MIMIC-IV Location resource would look like."
Usage: #example

* status = #active
* name = "Trauma SICU (TSICU)"
* physicalType = $HL7LocationPhysicalType#wa "Ward"
* managingOrganization = Reference(ExampleMimicOrganization)