|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes|
|---|---|---|---|---|
|microbiologyevents|microevent_id|Observation.id|[MimicObservationMicroSusc]|Convert to UUID5|
|microbiologyevents|microevent_id|Observation.identifer|[MimicObservationMicroSusc]||
|microbiologyevents|subject_id|Observation.subject|[MimicObservationMicroSusc]|Convert to UUID5|
|microbiologyevents|hadm_id|Observation.encounter|[MimicObservationMicroSusc]|Convert to UUID5|
|microbiologyevents|ab_itemid|Observation.code.coding.code|[MimicObservationMicroSusc]||
|microbiologyevents|ab_name|Observation.code.coding.display|[MimicObservationMicroSusc]||
|microbiologyevents|storetime|Observation.effectiveDateTime|[MimicObservationMicroSusc]||
|microbiologyevents|comments|Observation.note.text|[MimicObservationMicroSusc]||
|microbiologyevents|dilution_value|Observation.extension:dilution_details|[MimicObservationMicroSusc]|Set dilution value to custom extension dilution_details|
|microbiologyevents|micro_specimen_id, test_itemid, org_itemid|Observation.derivedFrom|[MimicObservationMicroSusc]|Reference back to parent Observation. Concat elements and convert to UUID5|

{: .grid #grid}

* Observation.status is fixed to 'final'
* Observation.category is set to code 'laboratory'
* Observation.value[x] has a 0..1 cardinality, hence only one measurement is captured in an Observation resource. When a value is missing, an Observation.dataAbsentReason is given (always 'unknown' (Unknown)).

{% include link-list.md %}
