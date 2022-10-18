One Observation resource per single measurement from a row of the triage and vitalsign tables of MIMIC-ED. Only temperature, heartrate, resprate, blood pressure sbp dbp, and o2sat.

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|triage / vitalsign|subject_id / stay_id|Observation.partOf|[MimicObservationVitalSigns]|Links to a MimicProcedureED whose subject (MimicPatient) and context (MimicEncounter) identifiers correspond with subject_id and stay_id, respectively.|
|triage / vitalsign|subject_id|Observation.subject|[MimicObservationVitalSigns]|Links to a MimicPatient with corresponding identifier.|
|triage / vitalsign|stay_id|Observation.encounter|[MimicObservationVitalSigns]|Links to a MimicEncounter with corresponding identifier.|
|edstays|intime|Observation.effective[x]|[MimicObservationVitalSigns]|Only for values from the triage table.|
|vitalsign|charttime|Observation.effective[x]|[MimicObservationVitalSigns]|Only for values from the vitalsign table.|
|vitalsign|temperature|Observation.value[x]|[MimicObservationVitalSigns]|If Observation captures temperature.|
|vitalsign|heartrate|Observation.value[x]|[MimicObservationVitalSigns]|If Observation captures heartrate.|
|vitalsign|resprate|Observation.value[x]|[MimicObservationVitalSigns]|If Observation captures resprate.|
|vitalsign|o2sat|Observation.value[x]|[MimicObservationVitalSigns]|If Observation captures o2sat.|
|vitalsign|sbp / dbp|Observation.component.value[x]|[MimicObservationVitalSigns]|If Observation captures blood pressure (component for sbp and dbp).|
{: .grid #grid}

* Observation.status is fixed to 'final' (Final) for all MIMIC observations.
* Observation.category is fixed to 'vital-signs' (Vital Signs).
* Observation.code corresponds to a LOINC code (from MIMIC-ED value set) for either an acuity, chiefcomplaint, or rhythm observation.
* Observation.value[x] has a 0..1 cardinality, hence only one measurement (or sbp and dbp in the case of blood pressure) is captured in an Observation resource. When a value is missing, an Observation.dataAbsentReason is given (always 'unknown' (Unknown)).

{% include link-list.md %}