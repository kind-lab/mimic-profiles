Profile:        MimicLocation
Parent:         us-core-location
Id:             mimic-location
Title:          "MIMIC Location"
Description:    "A MIMIC location profile based on US Core Location."

// cardinalities of used elements
* name 1..1

// modifications to elements
* physicalType = $LocationPhysicalType#wa "Ward"

// referencing must be to MIMIC profiles
* managingOrganization only Reference(MimicOrganization)
