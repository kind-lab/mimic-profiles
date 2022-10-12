### Relevant profiles ICU data subset
The ICU module of MIMIC-IV contains data that has been sourced from an ICU-specific clinical information system. MIMIC-IV-on-FHIR allows for this data to be pulled out separately, as test data for various applications.

The ICU data in MIMIC-IV-on-FHIR appear in the following profiles:
- [MimicEncounter]
- [MimicMedicationAdministrationICU]
- [MimicObservationChartevents]
- [MimicObservationDatetimeevents]
- [MimicObservationOutputevents]
- [MimicPatient]
- [MimicProcedureICU]

### Filter ICU data
To retrieve all resources that contain ICU data, a search should be applied to MimicEncounter resources. Searching for Encounter resources with Encounter.class code 'ACUTE' (inpatient acute) will retrieve all ICU-related Encounters. Following the resource references in MimicEncounter, all other ICU-related resources can be retrieved.

{% include img-small.html img="icu-subset.png" caption="Profiles that describe ICU data" %}


{% include link-list.md %}