|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|admissions|hadm_id|Encounter.id|MIMIC_Encounter|Hadm_id converted to UUID5|
|admissions|hadm_id|Encounter.identifier.value|MIMIC_Encounter||
|admissions|admission_type|Encounter.class|MIMIC_Encounter||
|admissions|admission_type|Encounter.type|MIMIC_Encounter||
|admissions|admission_location|Encounter.hospitalization.admitSource| MIMIC_Encounter||
|admissions|discharge_location|Encounter.hospitalization.dischargeDisposition|MIMIC_Encounter||
|admissions|subject_id|Encounter.subject|MIMIC_Encounter||
|admissions|admittime|Encounter.period.start|MIMIC_Encounter||
|admissions|dischtime|Encounter.period.end|MIMIC_Encounter|| 
{: .grid #grid}

* Encounter.status is fixed to 'finished' for all MIMIC encounters
* Encounter.serviceProvider is set to an UUID for BIDMC organization
