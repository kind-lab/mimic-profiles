### Relevant profiles ED data subset
The ED module of MIMIC-IV contains data that has been sourced from an ED-specific clinical information system. MIMIC-IV-on-FHIR allows for this data to be pulled out separately, as test data for various applications.

The ED data in MIMIC-IV-on-FHIR appear in the following profiles:
- [MimicCondition]
- [MimicEncounter] 
- [MimicMedicationDispenseED]
- [MimicMedicationStatementED]
- [MimicObservationED]
- [MimicObservationVitalSigns]
- [MimicPatient]
- [MimicProcedureED]

### Filter ED data
To retrieve all resources that contain ED data, a search should be applied to MimicEncounter resources. Searching for Encounter resources with Encounter.class code 'EMER' (emergency) will retrieve all ED-related Encounters. Following the resource references in MimicEncounter, all other ED-related resources can be retrieved.

{% include img-small.html img="ed-subset.png" caption="Profiles that describe ED data" %}


{% include link-list.md %}