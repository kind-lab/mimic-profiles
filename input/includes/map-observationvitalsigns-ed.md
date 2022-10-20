One Observation resource per single measurement from a row of the triage and vitalsign tables of MIMIC-ED. Only temperature, heartrate, resprate, blood pressure sbp dbp, and o2sat.

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|triage|stay_id|Observation.id|[MimicObservationVitalSigns]|Concat the stay_id with the vital sign name captured|
|triage|temperature|Observation.value[x]|[MimicObservationVitalSigns]|If observation is a temperature reading|
|triage|resprate|Observation.value[x]|[MimicObservationVitalSigns]|If observation is a respiratory rate|
|triage|heartrate|Observation.value[x]|[MimicObservationVitalSigns]|If observation is a heart rate reading|
|triage|o2sat|Observation.value[x]|[MimicObservationVitalSigns]|If observation is a oxygen saturation reading|
|triage|dbp|Observation.value[x]|[MimicObservationVitalSigns]|If observation is a blood pressure reading|
|triage|sbp, dbp|Observation.component.value[x]|[MimicObservationVitalSigns]|If Observation captures blood pressure (component for sbp and dbp).|
|triage|subject_id|Observation.subject|[MimicObservationVitalSigns]|Convert to UUID5|
|triage|stay_id|Observation.encounter|[MimicObservationVitalSigns]|Convert to UUID5|
|triage|stay_id|Observation.procedure|[MimicObservationVitalSigns]|Convert to UUID5|
|edstays|intime|Observation.effectiveDateTime|[MimicObservationVitalSigns]||
|vitalsign|stay_id, charttime|Observation.id|[MimicObservationVitalSigns]|Concat the stay_ida and charttime with the vital sign name captured, then convert to UUID5|
|vitalsign|temperature|Observation.value[x]|[MimicObservationVitalSigns]|If observation is a temperature reading|
|vitalsign|resprate|Observation.value[x]|[MimicObservationVitalSigns]|If observation is a respiratory rate|
|vitalsign|heartrate|Observation.value[x]|[MimicObservationVitalSigns]|If observation is a heart rate reading|
|vitalsign|o2sat|Observation.value[x]|[MimicObservationVitalSigns]|If observation is a oxygen saturation reading|
|vitalsign|dbp|Observation.value[x]|[MimicObservationVitalSigns]|If observation is a blood pressure reading|
|vitalsign|sbp, dbp|Observation.component.value[x]|[MimicObservationVitalSigns]|If Observation captures blood pressure (component for sbp and dbp).|
|vitalsign|subject_id|Observation.subject|[MimicObservationVitalSigns]|Convert to UUID5|
|vitalsign|stay_id|Observation.encounter|[MimicObservationVitalSigns]|Convert to UUID5|
|vitalsign|stay_id, charttime|Observation.procedure|[MimicObservationVitalSigns]|Concat elements and convert to UUID5|
{: .grid #grid}

* Observation.status is fixed to 'final' (Final) for all MIMIC observations.
* Observation.category is fixed to 'vital-signs' (Vital Signs).
* Observation.code corresponds to a LOINC code (from MIMIC-ED value set) for either temperateure, respiratory rate, heart rate, oxygen saturation, or blood pressure.
* Observation.value[x] has a 0..1 cardinality, hence only one measurement (or sbp and dbp in the case of blood pressure) is captured in an Observation resource. When a value is missing, an Observation.dataAbsentReason is given (always 'unknown' (Unknown)).

{% include link-list.md %}
