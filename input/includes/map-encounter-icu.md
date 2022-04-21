|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|icustays|stay_id|Encounter.id|MIMIC_Encounter_ICU|Stay_id converted to UUID5|
|icustays|stay_id|Encounter.identifier.value|MIMIC_Encounter_ICU||
|icustays|first_careunit|Encounter.type|MIMIC_Encounter_ICU||
|icustays|intime|Encounter.period.start|MIMIC_Encounter_ICU||
|icustays|outtime|Encounter.period.end|MIMIC_Encounter_ICU||
|icustays|subject_id|Encounter.subject|MIMIC_Encounter_ICU|Convert to UUID|
|icustays|hadm_id|Encounter.partOf|MIMIC_Encounter_ICU|Links to MIMIC_Encounter's|
{: .grid #grid}

* Encounter.status is fixed to 'finished' for all MIMIC encounters
* Encounter.class is fixed to 'ACUTE'
