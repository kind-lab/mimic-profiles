|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes|
|---|---|---|---|---|
|labevents|labevent_id|Observation.id|[MimicObservationLabevents]|Convert to UUID5|
|labevents|labevent_id|Observation.identifier|[MimicObservationLabevents]||
|labevents|status|Observation.status|[MimicObservationLabevents]||
|labevents|subject_id|Observation.subject|[MimicObservationLabevents]|Convert to UUID5|
|labevents|hadm_id|Observation.encounter|[MimicObservationLabevents]|Convert to UUID5|
|labevents|specimen_id|Observation.specimen|[MimicObservationLabevents]|Convert to UUID5|
|labevents|charttime|Observation.effectiveDateTime|[MimicObservationLabevents]||
|labevents|storetime|Observation.issued|[MimicObservationLabevents]||
|labevents|valuenum|Observation.valueQuantity.value|[MimicObservationLabevents]||
|labevents|valueuom|Observation.valueQuantity.unit|[MimicObservationLabevents]|Used for valueQuantity unit and code|
|labevents|value|Observation.valueString|[MimicObservationLabevents]|Only used if MIMIC-IV valuenum is NULL|
|labevents|comments|Observation.valueString|[MimicObservationLabevents]|Only used if MIMIC-IV valuenum is NULL and value is NULL|
|labevents|comments|Observation.note.text|[MimicObservationLabevents]|Always capture the comment, but does not always match valueString|
|labevents|flag|Observation.interpretation|[MimicObservationLabevents]||
|labevents|ref_range_lower|Observation.referenceRange.low.value|[MimicObservationLabevents]||
|labevents|valueuom|Observation.referenceRange.low.unit|[MimicObservationLabevents]|Used for unit and code|
|labevents|ref_range_upper|Observation.referenceRange.high.value|[MimicObservationLabevents]||
|labevents|valueuom|Observation.referenceRange.high.unit|[MimicObservationLabevents]|Used for unit and code|
|labevents|priority|Observation.extension:lab-priority|[MimicObservationLabevents]|Set value to a custom extension [LabPriority]|
|d_labitems|itemid|Observation.code.coding.code|[MimicObservationLabevents]||
|d_labitems|label|Observation.code.coding.display|[MimicObservationLabevents]||

{: .grid #grid}

* Observation.category is set to code 'laboratory'
* Observation.value[x] has a 0..1 cardinality, hence only one measurement is captured in an Observation resource. When a value is missing, an Observation.dataAbsentReason is given (always 'unknown' (Unknown)).

{% include link-list.md %}
