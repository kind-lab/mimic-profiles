Profile:        MimicObservationDatetimeevents
Parent:         Observation
Id:             mimic-observation-datetimeevents
Title:          "MIMIC Observation Datetimeevents"
Description:    "A MIMIC observation datetimeevents profile based on the base observation resource"

* code from $MimicDatetimeeventsDItems
* category from $MimicObservationCategory

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
