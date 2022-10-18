| MIMIC Element           | FHIR Element                                   | FHIR Profile/Resource | Notes                                                                                |
| ---------------------- | ---------------------------------------------- | --------------------- | ------------------------------------------------------------------------------------ |
| **Table: patients**|
| subject\_id            | Patient.identifier                             | [MimicPatient]        | Also create a patient name with Patient\_<subject\_id>                               |
| gender                 | Patient.gender                                 | [MimicPatient]        | Need to slightly map to match FHIR format. Also used to infer the extension.birthSex |
| anchor\_age            | Patient.birthDate                              | [MimicPatient]        | Use transfers.intime to calculate an approximate birthDate                           |
| anchor\_year           | \-                                             | \-                    | Not needed, but could create extension if desired                                    |
| anchor\_year\_group    | \-                                             | \-                    | Not needed, but could create extension if desired                                    |
| dod                    | Patient.deceasedDateTime                       | [MimicPatient]        |                                                                                      |
| **Table: admissions**|
| subject\_id            | Encounter.subject                              | [MimicEncounter]      |                                                                                      |
| hadm\_id               | Encounter.identifier                           | [MimicEncounter]      | Also used for id, converted to UUID                                                  |
| admittime              | Encounter.period.start                         | [MimicEncounter]      |                                                                                      |
| dischtime              | Encounter.period.end                           | [MimicEncounter]      |                                                                                      |
| deathtime              | \-                                             | \-                    | Patient.dod used in place of deathtime                                               |
| admission\_type        | Encounter.type                                 | [MimicEncounter]      |                                                                                      |
| admission\_location    | Encounter.hospitalization.admitSource          | [MimicEncounter]      |                                                                                      |
| discharge\_location    | Encounter.hospitalization.dischargeDisposition | [MimicEncounter]      |                                                                                      |
| insurance              | \-                                             | \-                    |                                                                                      |
| language               | communication.language                         | [MimicPatient]        |                                                                                      |
| marital\_status        | maritalStatus                                  | [MimicPatient]        |                                                                                      |
| ethnicity              | extension.ethnicity                            | [MimicPatient]        | Also used for race extension                                                         |
| edregtime              | \-                                             | \-                    |                                                                                      |
| edouttime              | \-                                             | \-                    |                                                                                      |
| hospital\_expire\_flag | \-                                             | \-                    |                                                                                      |
| **Table: transfers**|
| subject\_id            | \-                                             | \-                    |                                                                                      |
| hadm\_id               | \-                                             | \-                    |                                                                                      |
| transfer\_id           | \-                                             | \-                    |                                                                                      |
| eventtype              | \-                                             | \-                    |                                                                                      |
| careunit               | \-                                             | \-                    |                                                                                      |
| intime                 | birthDate                                      | [MimicPatient]        | Used to calculate a birthdate based on intime and anchor\_age                        |
| outtime                | \-                                             | \-                    |                                                                                      |
{: .grid #grid}

{% include link-list.md %}