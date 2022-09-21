One Procedure resource per row in the triage / vitalsign tables (= collection of Observations for a patient).

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|triage / vitalsign|subject_id|Procedure.subject|MimicProcedureED|Links to a MimicPatient with corresponding identifier.|
|triage / vitalsign|stay_id|Procedure.encounter|MimicProcedureED|Links to a MimicEncounter with corresponding identifier.|
|edstays|intime|Procedure.performed[x]|MimicProcedureED|Only when describing a row of the triage table.|
|vitalsign|charttime|Procedure.performed[x]|MimicProcedureED|Only when describing a row of the vitalsign table.|
{: .grid #grid}

* Procedure.status is fixed to 'completed' (Completed) for all MIMIC-ED procedures.
* Procedure.code is either SNOMED CT 386478007 (Triage: emergency center (procedure)) when the Procedure describes observations from the triage table, or SNOMED CT 410188000 (Taking patient vital signs assessment (procedure)) when describing observations from the vitalsign table. 