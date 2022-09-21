One Condition resource per diagnosis (row in diagnosis table).

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|diagnosis|icd_version|Condition.code.CodeableConcept.system|MimicCondition|If '9' URI of ICD9 if '10' URI of ICD10 (MIMIC code systems)|
|diagnosis|icd_code|Condition.code.CodeableConcept.code|MimicCondition||
|diagnosis|subject_id|Condition.subject|MimicCondition|Links to a MimicPatient with corresponding identifier|
|diagnosis|stay_id|Condition.encounter|MimicCondition|Links to a MimicEncounter with corresponding identifier|
{: .grid #grid}

* Condition.category is fixed to 'encounter-diagnosis' (Encounter Diagnosis) for all MIMIC conditions