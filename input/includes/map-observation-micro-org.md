|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes|
|---|---|---|---|---|
|microbiologyevents|micro_specimen_id, test_itemid, org_itemid|Observation.id|[MimicObservationMicroOrg]|Concat elements and convert to UUID5|
|microbiologyevents|subject_id|Observation.subject|[MimicObservationMicroOrg]|Convert to UUID5|
|microbiologyevents|hadm_id|Observation.encounter|[MimicObservationMicroOrg]|Convert to UUID5|
|microbiologyevents|org_itemid|Observation.code.coding.code|[MimicObservationMicroOrg]||
|microbiologyevents|org_name|Observation.code.coding.display|[MimicObservationMicroOrg]||
|microbiologyevents|charttime|Observation.effectiveDateTime|[MimicObservationMicroOrg]||
|microbiologyevents|micro_specimen_id, test_itemid|Observation.derivedFrom|[MimicObservationMicroOrg]|Point to the parent microbiology test|
|microbiologyevents|microevent_id|Observation.hasMember|[MimicObservationMicroOrg]|Group all the references to microevent_id associated with an org_itemid and test_itemid|
|microbiologyevents|org_itemid|Observation.valueString|[MimicObservationMicroOrg]||
{: .grid #grid}

* Observation.status is fixed to 'final'
* Observation.category is set to code 'laboratory'
* Observation.value[x] has a 0..1 cardinality, hence only one measurement is captured in an Observation resource. When a value is missing, an Observation.dataAbsentReason is given (always 'unknown' (Unknown)).

{% include link-list.md %}
