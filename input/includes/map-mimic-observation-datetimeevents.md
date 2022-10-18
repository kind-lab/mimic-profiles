|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|datetimeevents|stay_id, charttime, itemid|Observation.id|[MimicObservationDatetimeevents]|Concat MIMIC elements and convert to UUID5|
|datetimeevents|subject_id|Observation.subject|[MimicObservationDatetimeevents]|Convert to UUID5|
|datetimeevents|stay_id|Observation.encounter|[MimicObservationDatetimeevents]|Convert to UUID5|
|datetimeevents|charttime|Observation.effectiveDateTime|[MimicObservationDatetimeevents]||
|datetimeevents|storetime|Observation.issued|[MimicObservationDatetimeevents]||
|datetimeevents|value|Observation.valueDateTime|[MimicObservationDatetimeevents]||
|d_items|category|Observation.category|[MimicObservationDatetimeevents]||
|d_items|itemid|Observation.code.coding.code|[MimicObservationDatetimeevents]||
|d_items|label|Observation.code.coding.display|[MimicObservationDatetimeevents]||


{: .grid #grid}

* Observation.status is fixed to 'final'

{% include link-list.md %}
