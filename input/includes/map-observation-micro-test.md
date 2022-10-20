|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes|
|---|---|---|---|---|
|microbiologyevents|micro_specimen_id, test_itemid|Observation.id|[MimicObservationMicroTest]|Concat elements and convert to UUID5|
|microbiologyevents|subject_id|Observation.subject|[MimicObservationMicroTest]|Convert to UUID5|
|microbiologyevents|hadm_id|Observation.encounter|[MimicObservationMicroTest]|Convert to UUID5|
|microbiologyevents|micro_specimen_id|Observation.specimen|[MimicObservationMicroTest]|Convert to UUID5|
|microbiologyevents|test_itemid|Observation.code.coding.code|[MimicObservationMicroTest]||
|microbiologyevents|test_name|Observation.code.coding.display|[MimicObservationMicroTest]||
|microbiologyevents|charttime|Observation.effectiveDateTime|[MimicObservationMicroTest]||
|microbiologyevents|org_itemid|Observation.hasMember|[MimicObservationMicroTest]|Group all the references to org_itemid associated with the test_itemid|
|microbiologyevents|org_itemid|Observation.valueString|[MimicObservationMicroTest]||
{: .grid #grid}

* Observation.status is fixed to 'final'
* Observation.category is set to code 'laboratory'
* Observation.value[x] has a 0..1 cardinality, hence only one measurement is captured in an Observation resource. When a value is missing, an Observation.dataAbsentReason is given (always 'unknown' (Unknown)).

{% include link-list.md %}
