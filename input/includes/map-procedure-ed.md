One Procedure resource per row in the triage / vitalsign tables (= collection of Observations for a patient).

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|triage|stay_id|Procedure.id|[MimicProcedureED]|Each stay_id has one triage associated with it|
|triage|subject_id|Procedure.subject|[MimicProcedureED]|Convert to UUID5|
|triage|stay_id|Procedure.encounter|[MimicProcedureED]|Convert to UUID5|
|triage|intime|Procedure.performedDateTime|[MimicProcedureED]||
|vitalsign|stay_id, charttime|Procedure.id|[MimicProcedureED]|Concat elements and convert to UUID5|
|vitalsign|subject_id|Procedure.subject|[MimicProcedureED]|Convert to UUID5|
|vitalsign|stay_id|Procedure.encounter|[MimicProcedureED]|Convert to UUID5|
|vitalsign|charttime|Procedure.performedDateTime|[MimicProcedureED]||


{: .grid #grid}

* Procedure.status is fixed to 'completed' (Completed) for all MIMIC-ED procedures.
* Procedure.code is either SNOMED CT 386478007 (Triage: emergency center (procedure)) when the Procedure describes observations from the triage table, or SNOMED CT 410188000 (Taking patient vital signs assessment (procedure)) when describing observations from the vitalsign table. 

{% include link-list.md %}
