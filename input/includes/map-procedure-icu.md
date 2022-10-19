|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|procedureevents|stay_id, order_id, itemid|Procedure.id|[MimicProcedureICU]|Concat elements and convert to UUID5|
|procedureevents|subject_id|Procedure.subject|[MimicProcedureICU]|Convert to UUID5|
|procedureevents|stay_id|Procedure.encounter|[MimicProcedureICU]|Convert to UUID5|
|procedureevents|starttime|Procedure.performedPeriod.start|[MimicProcedureICU]||
|procedureevents|endtime|Procedure.performedPeriod.end|[MimicProcedureICU]||
|procedureevents|location|Procedure.bodySite|[MimicProcedureICU]||
|procedureevents|statusdescription|Procedure.status|[MimicProcedureICU]||
|procedureevents|ordercategoryname|Procedure.category|[MimicProcedureICU]||
|procedureevents|itemid|Procedure.code.coding.code|[MimicProcedureICU]||
|d_items|label|Procedure.code.coding.display|[MimicProcedureICU]||

{: .grid #grid}

{% include link-list.md %}
