|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|icustays|stay_id|Encounter.id|[MimicEncounter]|Stay_id converted to UUID5|
|icustays|stay_id|Encounter.identifier.value|[MimicEncounter]||
|icustays|first_careunit|Encounter.location.reference|[MimicEncounter]||
|icustays|intime|Encounter.period.start|[MimicEncounter]||
|icustays|outtime|Encounter.period.end|[MimicEncounter]||
|icustays|subject_id|Encounter.subject|[MimicEncounter]|Convert to UUID|
|icustays|hadm_id|Encounter.partOf|[MimicEncounter]|Links to MIMIC_Encounter's|
|transfers|intime|Encounter.location.period.start|[MimicEncounter]|Take the min intime in the transfers table|
|transfers|outtime|Encounter.location.period.end|[MimicEncounter]|Take the max outtime in the transfers table|
{: .grid #grid}

* Encounter.status is fixed to 'finished' for all MIMIC encounters
* Encounter.class is fixed to 'ACUTE'
* Encounter.type is fixed to SCT code 308335008 for "Patient encounter procedure"

{% include link-list.md %}
