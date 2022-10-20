|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|chartevents|stay_id, itemid, value|Observation.id|[MimicObservationChartevents]|Concat MIMIC elements and convert to UUID5|
|chartevents|subject_id|Observation.subject|[MimicObservationChartevents]|Convert to UUID5|
|chartevents|stay_id|Observation.encounter|[MimicObservationChartevents]|Convert to UUID5|
|chartevents|charttime|Observation.effectiveDateTime|[MimicObservationChartevents]||
|chartevents|storetime|Observation.issued|[MimicObservationChartevents]||
|chartevents|valuenum|Observation.valueQuantity.value|[MimicObservationChartevents]||
|chartevents|valueuom|Observation.valueQuantity.unit|[MimicObservationChartevents]|Used for both unit and code element|
|chartevents|value|Observation.valueString|[MimicObservationChartevents]|Only store valueString if valueQuantity is not present|
|chartevents|lownormalvalue|Observation.referenceRange.low.value|[MimicObservationChartevents]||
|chartevents|valueuom|Observation.referenceRange.low.unit|[MimicObservationChartevents]|Used for both unit and code element|
|chartevents|highnormalvalue|Observation.referenceRange.high.value|[MimicObservationChartevents]||
|chartevents|valueuom|Observation.referenceRange.high.unit|[MimicObservationChartevents]|Used for both unit and code element|
|d_items|category|Observation.category|[MimicObservationChartevents]||
|d_items|itemid|Observation.code.coding.code|[MimicObservationChartevents]||
|d_items|label|Observation.code.coding.display|[MimicObservationChartevents]||
{: .grid #grid}

* Observation.status is fixed to 'final'

{% include link-list.md %}
