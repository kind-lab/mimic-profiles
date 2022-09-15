Profile:        MimicPatient
Parent:         Patient
Id:             mimic-patient
Title:          "MIMIC Patient"
Description:    "A MIMIC patient based on FHIR R4 Patient."

// cardinalities of update elements
* name 1..*
* identifier 1..1
* birthDate 0..1

// cardinalities of used elements
* gender 1..1
* maritalStatus 0..1
* deceasedDateTime 0..1
* communication 0..*
* managingOrganization 0..1

// add in US Core extensions for race, ethnicity, and birthsex
* extension contains
  $UsCoreRaceExtension named race 0..1 
  and $UsCoreEthnicityExtension named ethnicity 0..1
  and $UsCoreBirthSexExtension named birthsex 0..1

* extension[race].extension[text] 1..1 

// binding to MIMIC terminology
* identifier.system = $IdentifierPatient
