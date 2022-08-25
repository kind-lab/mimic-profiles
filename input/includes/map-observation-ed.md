One Observation resource per single measurement from a row of the triage and vitalsign tables of MIMIC-ED. Only acuity, chiefcomplaint, and rhythm. 

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|triage / vitalsign|subject_id / stay_id|Observation.partOf|MimicObservationED|Links to a MimicProcedureED whose subject (MimicPatient) and context (MimicEncounter) identifiers correspond with subject_id and stay_id, respectively.|
|triage / vitalsign|subject_id|Observation.subject|MimicObservationED|Links to a MimicPatient with corresponding identifier.|
|triage / vitalsign|stay_id|Observation.encounter|MimicObservationED|Links to a MimicEncounter with corresponding identifier.|
|edstays|intime|Observation.effective[x]|MimicObservationED|Only for values from the triage table.|
|vitalsign|charttime|Observation.effective[x]|MimicObservationED|Only for values from the vitalsign table.|
|triage|acuity|Observation.value[x]|MimicObservationED|If Observation captures acuity.|
|triage|chiefcomplaint|Observation.value[x]|MimicObservationED|If Observation captures chiefcomplaint.|
|vitalsign|rhythm|Observation.value[x]|MimicObservationED|If Observation captures rhythm.|
{: .grid #grid}

* Observation.status is fixed to 'final' (Final) for all MIMIC observations.
* Only for rhytm: Observation.category is fixed to 'exam' (Exam). In all other cases a category is absent. 
* Observation.code corresponds to a LOINC code (from MIMIC-ED value set) for either an acuity, chiefcomplaint, or rhythm observation.
* Observation.value[x] has a 0..1 cardinality, hence only one measurement (acuity, rhythm, or chiefcomplaint) is captured in an Observation resource. When a value is missing, an Observation.dataAbsentReason is given (always 'unknown' (Unknown)).