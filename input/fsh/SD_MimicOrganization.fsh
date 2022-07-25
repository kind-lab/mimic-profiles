Profile:        MimicOrganization
Parent:         us-core-organization
Id:             mimic-organization
Title:          "MIMIC Organization"
Description:    "A MIMIC organization profile based on US Core Organization."

// cardinalities of used elements
* identifer 1..*
* type 1..1
* name 1..1
* active 1..1

// binding to MIMIC terminology
* identifier.system = $IdentifierOrganization
