Profile:        MimicObservationOutputevents
Parent:         Observation
Id:             mimic-observation-outputevents
Title:          "MIMIC Observation Outputevents"
Description:    "A MIMIC observation outputevents profile based on the base observation resource"

* identifier.system = $IdentifierObservationOutputevents
* code from $MimicOutputeventsDItems
* category from $MimicObservationCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
