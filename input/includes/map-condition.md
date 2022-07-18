|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes|
|---|---|---|---|---|
|diagnosis_icd|hadm_id, seq_num, icd_code|Condition.id|MIMIC_Condition|Id made up of concatenation of hadm_id, seq_num, and icd_code, converted to UUID5|
|diagnosis_icd|hadm_id, seq_num, icd_code| Condition.identifier.value|MIMIC_Condition|Identifer made up of concatenation of hadm_id, seq_num, and icd_code|
|diagnosis_icd | subject_id | Condition.subject | MIMIC_Condition|| 
|diagnosis_icd | hadm_id | Condition.encounter | MIMIC_Condition|| 
|d_icd_diagnoses | icd_code | Condition.code.coding.code | MIMIC_Condition|| 
|d_icd_diagnoses | long_title | Condition.code.coding.display | MIMIC_Condition||
{: .grid #grid}

* Condition.category set to fixed value of 'encounter-diagnosis' 
