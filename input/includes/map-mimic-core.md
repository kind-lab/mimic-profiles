| MIMIC Element           | FHIR Element                                   | FHIR Profile/Resource | Notes                                                                                |
| ---------------------- | ---------------------------------------------- | --------------------- | ------------------------------------------------------------------------------------ |
| **Table: patients**|
| subject\_id            | Patient.identifier                             | MIMIC\_Patient        | Also create a patient name with Patient\_<subject\_id>                               |
| gender                 | Patient.gender                                 | MIMIC\_Patient        | Need to slightly map to match FHIR format. Also used to infer the extension.birthSex |
| anchor\_age            | Patient.birthDate                              | MIMIC\_Patient        | Use transfers.intime to calculate an approximate birthDate                           |
| anchor\_year           | \-                                             | \-                    | Not needed, but could create extension if desired                                    |
| anchor\_year\_group    | \-                                             | \-                    | Not needed, but could create extension if desired                                    |
| dod                    | Patient.deceasedDateTime                       | MIMIC\_Patient        |                                                                                      |
| **Table: admissions**|
| subject\_id            | Encounter.subject                              | MIMIC\_Encounter      |                                                                                      |
| hadm\_id               | Encounter.identifier                           | MIMIC\_Encounter      | Also used for id, converted to UUID                                                  |
| admittime              | Encounter.period.start                         | MIMIC\_Encounter      |                                                                                      |
| dischtime              | Encounter.period.end                           | MIMIC\_Encounter      |                                                                                      |
| deathtime              | \-                                             | \-                    | Patient.dod used in place of deathtime                                               |
| admission\_type        | Encounter.type                                 | MIMIC\_Encounter      |                                                                                      |
| admission\_location    | Encounter.hospitalization.admitSource          | MIMIC\_Encounter      |                                                                                      |
| discharge\_location    | Encounter.hospitalization.dischargeDisposition | MIMIC\_Encounter      |                                                                                      |
| insurance              | \-                                             | \-                    |                                                                                      |
| language               | communication.language                         | MIMIC\_Patient        |                                                                                      |
| marital\_status        | maritalStatus                                  | MIMIC\_Patient        |                                                                                      |
| ethnicity              | extension.ethnicity                            | MIMIC\_Patient        | Also used for race extension                                                         |
| edregtime              | \-                                             | \-                    |                                                                                      |
| edouttime              | \-                                             | \-                    |                                                                                      |
| hospital\_expire\_flag | \-                                             | \-                    |                                                                                      |
| **Table: transfers**|
| subject\_id            | \-                                             | \-                    |                                                                                      |
| hadm\_id               | \-                                             | \-                    |                                                                                      |
| transfer\_id           | \-                                             | \-                    |                                                                                      |
| eventtype              | \-                                             | \-                    |                                                                                      |
| careunit               | \-                                             | \-                    |                                                                                      |
| intime                 | birthDate                                      | MIMIC\_Patient        | Used to calculate a birthdate based on intime and anchor\_age                        |
| outtime                | \-                                             | \-                    |                                                                                      |
{: .grid #grid}