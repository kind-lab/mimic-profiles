One Encounter resource per stay_id (i.e., per ED visit / per row in the edstays table).

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|edstays|stay_id|Encounter.identifier:ED_ID|[MimicEncounter]|This is a sliced element, ED identifier is captured in the ED_ID slice.|
|edstays|subject_id|Encounter.subject|[MimicEncounter]|Links to a MimicPatient with corresponding identifier|
|edstays|intime|Encounter.period.start|[MimicEncounter]||
|edstays|outtime|Encounter.period.end|[MimicEncounter]||
|edstays|arrival_transport|Encounter.hospitalization.admitSource|[MimicEncounter]|MIMIC code system|
|edstays|disposition|Encounter.hospitalization.dischargeDisposition|[MimicEncounter]|MIMIC code system|
{: .grid #grid}

* Encounter.status is fixed to 'finished' (Finished) for all MIMIC encounters
* Encounter.class should be 'EMER' (Emergency) for all MIMIC-ED encounters

{% include link-list.md %}