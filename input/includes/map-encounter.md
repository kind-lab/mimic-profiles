|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|admissions|hadm_id|Encounter.id|MimicEncounter|Hadm_id converted to UUID5|
|admissions|hadm_id|Encounter.identifier.value|MimicEncounter||
|admissions|admission_type|Encounter.class|MimicEncounter||
|admissions|admission_type|Encounter.type|MimicEncounter||
|admissions|admission_location|Encounter.hospitalization.admitSource| MimicEncounter||
|admissions|discharge_location|Encounter.hospitalization.dischargeDisposition|MimicEncounter||
|admissions|subject_id|Encounter.subject|MimicEncounter||
|admissions|admittime|Encounter.period.start|MimicEncounter||
|admissions|dischtime|Encounter.period.end|MimicEncounter|| 
{: .grid #grid}

* Encounter.status is fixed to 'finished' for all MIMIC encounters
* Encounter.serviceProvider is set to an UUID for BIDMC organization
