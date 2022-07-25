Profile:        MimicOrganization
Parent:         us-core-organization
Id:             mimic-organization
Title:          "MIMIC Organization"
Description:    "A MIMIC organization profile based on US Core Organization."

// cardinalities of update elements
* identifier 1..*
* type 1..*

// cardinalities of used elements
* name 1..1
* active 1..1

// binding to MIMIC terminology
* identifier.system = $IdentifierOrganization
