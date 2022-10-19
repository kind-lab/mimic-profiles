|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|outputevents|stay_id, charttime, itemid|Observation.id|[MimicObservationOutputevents]|Concat MIMIC elements and convert to UUID5|
|outputevents|subject_id|Observation.subject|[MimicObservationOutputevents]|Convert to UUID5|
|outputevents|stay_id|Observation.encounter|[MimicObservationOutputevents]|Convert to UUID5|
|outputevents|charttime|Observation.effectiveDateTime|[MimicObservationOutputevents]||
|outputevents|storetime|Observation.issued|[MimicObservationOutputevents]||
|outputevents|value|Observation.valueQuantity.value|[MimicObservationOutputevents]||
|outputevents|valueuom|Observation.valueQuantity.unit|[MimicObservationOutputevents]|Used for unit and code elements|
|d_items|category|Observation.category|[MimicObservationOutputevents]||
|d_items|itemid|Observation.code.coding.code|[MimicObservationOutputevents]||
|d_items|label|Observation.code.coding.display|[MimicObservationOutputevents]||


{: .grid #grid}

* Observation.status is fixed to 'final'

{% include link-list.md %}
