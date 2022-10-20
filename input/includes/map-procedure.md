|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|procedures_icd|hadm_id, seq_num, icd_code|Procedure.id|[MimicProcedure]|Concat elements and convert to UUID5|
|procedures_icd|subject_id|Procedure.subject|[MimicProcedure]|Convert to UUID5|
|procedures_icd|hadm_id|Procedure.encounter|[MimicProcedure]|Convert to UUID5|
|procedures_icd|chartdate|Procedure.performedDateTime|[MimicProcedure]||
|procedures_icd|icd_code|Procedure.code.coding.code|[MimicProcedure]||
|procedures_icd|icd_version|Procedure.code.coding.system|[MimicProcedure]|ICD Version used to select FHIR ICD codesystem|
|d_icd_procedures|long_title|Procedure.code.coding.display|[MimicProcedure]||
{: .grid #grid}

* Procedure.status is fixed to 'completed' (Completed) for all procedures.

{% include link-list.md %}
