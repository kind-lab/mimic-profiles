|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes|
|---|---|---|---|---|
|chartevents|stay_id, charttime, itemid, value|Observation.id|MIMIC_Observation_Chartevents|Id is concatenation of mimic data elements and converted to UUID5|
|chartevents|stay_id, charttime, itemid, value|Observation.id|MIMIC_Observation_Chartevents|Identifier is concatenation of mimic data elements|
|d_items|category|Observation.category|MIMIC_Observation_Chartevents||
|chartevents|value|Observation.value|MIMIC_Observation_Chartevents||

{: .grid #grid}

* Observation.status is fixed to 'final'
