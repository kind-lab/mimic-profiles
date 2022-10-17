|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes|
|---|---|---|---|---|
|diagnosis_icd|hadm_id, seq_num, icd_code|Condition.id|[MimicCondition]|Id made up of concatenation of hadm_id, seq_num, and icd_code, converted to UUID5|
|diagnosis_icd|hadm_id, seq_num, icd_code| Condition.identifier.value|[MimicCondition]|Identifer made up of concatenation of hadm_id, seq_num, and icd_code|
|diagnosis_icd | subject_id | Condition.subject | [MimicCondition]|| 
|diagnosis_icd | hadm_id | Condition.encounter | [MimicCondition]|| 
|d_icd_diagnoses | icd_code | Condition.code.coding.code | [MimicCondition]|| 
|d_icd_diagnoses | long_title | Condition.code.coding.display | [MimicCondition]||
{: .grid #grid}

* Condition.category set to fixed value of 'encounter-diagnosis' 

{% include link-list.md %}