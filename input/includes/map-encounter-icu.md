|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|icustays|stay_id|Encounter.id|[MimicEncounterICU]|Stay_id converted to UUID5|
|icustays|stay_id|Encounter.identifier.value|[MimicEncounterICU]||
|icustays|first_careunit|Encounter.type|[MimicEncounterICU]||
|icustays|intime|Encounter.period.start|[MimicEncounterICU]||
|icustays|outtime|Encounter.period.end|[MimicEncounterICU]||
|icustays|subject_id|Encounter.subject|[MimicEncounterICU]|Convert to UUID|
|icustays|hadm_id|Encounter.partOf|[MimicEncounterICU]|Links to MIMIC_Encounter's|
{: .grid #grid}

* Encounter.status is fixed to 'finished' for all MIMIC encounters
* Encounter.class is fixed to 'ACUTE'

{% include link-list.md %}