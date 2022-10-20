One Observation resource per single measurement from a row of the triage and vitalsign tables of MIMIC-ED. Only acuity, chiefcomplaint, rhythm, and pain. 

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|vitalsign|stay_id, charttime, key|Observation.id|[MimicObservationED]|Concat elements and convert to UUID5|
|vitalsign|rhythm|Observation.value[x]|[MimicObservationED]|If Observation captures rhythm|
|vitalsign|pain|Observation.value[x]|[MimicObservationED]|If Observation captures pain|
|vitalsign|subject_id|Observation.subject|[MimicObservationED]|Convert to UUID5|
|vitalsign|stay_id|Observation.encounter|[MimicObservationED]|Convert to UUID5|
|vitalsign|value|Observation.valueString|[MimicObservationED]||
|vitalsign|stay_id, charttime|Observation.partOf|[MimicObservationED]|Concat elements and convert to UUID5|
|triage|stay_id, intime, key|Observation.id|[MimicObservationED]|Concat elements and convert to UUID5|
|triage|acuity|Observation.value[x]|[MimicObservationED]|If Observation captures acuity|
|triage|chiefcomplaint|Observation.value[x]|[MimicObservationED]|If Observation captures chiefcomplaint|
|triage|pain|Observation.value[x]|[MimicObservationED]|If Observation captures pain|
|triage|subject_id|Observation.subject|[MimicObservationED]|Convert to UUID5|
|triage|stay_id|Observation.encounter|[MimicObservationED]|Convert to UUID5|
|triage|value|Observation.valueString|[MimicObservationED]||
|triage|stay_id, charttime|Observation.partOf|[MimicObservationED]|Concat elements and convert to UUID5|
{: .grid #grid}

* Observation.status is fixed to 'final' (Final) for all MIMIC observations.
* Only for rhytm: Observation.category is fixed to 'exam' (Exam). In all other cases a category is absent. 
* Observation.code corresponds to a LOINC code (from MIMIC-ED value set) for either an acuity, chiefcomplaint, or rhythm observation.
* Observation.value[x] has a 0..1 cardinality, hence only one measurement (acuity, rhythm, or chiefcomplaint) is captured in an Observation resource. When a value is missing, an Observation.dataAbsentReason is given (always 'unknown' (Unknown)).

{% include link-list.md %}
