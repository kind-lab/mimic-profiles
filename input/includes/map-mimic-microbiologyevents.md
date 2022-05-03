|MIMIC Element            |FHIR Element                         |FHIR Profile/Resources                                                                          |Notes                                                                                       |
|-------------------------|-------------------------------------|------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
|**Table: microbiologyevents**|                                     |                                                                                                |                                                                                            |
|subject\_id              |Observation.subject                  |MIMIC\_Observation\_Micro\_Test, MIMIC\_Observation\_Micro\_Org, MIMIC\_Observation\_Micro\_Susc|                                                                                            |
|hadm\_id                 |Observation.encounter                |MIMIC\_Observation\_Micro\_Test, MIMIC\_Observation\_Micro\_Org, MIMIC\_Observation\_Micro\_Susc|                                                                                            |
|micro\_specimen\_id      |Observation.identifier               |MIMIC\_Observation\_Micro\_Test, MIMIC\_Observation\_Micro\_Org, MIMIC\_Observation\_Micro\_Susc|part of identifier, concatenated with other elements to make full identifier                |
|                         |Observation.derivedFrom              |MIMIC\_Observation\_Micro\_Org, MIMIC\_Observation\_Micro\_Susc                                 |                                                                                            |
|                         |Observation.hasMember                |MIMIC\_Observation\_Micro\_Test, MIMIC\_Observation\_Micro\_Org                                 |                                                                                            |
|                         |Observation.specimen                 |MIMIC\_Observation\_Micro\_Susc                                                                 |                                                                                            |
|charttime                |Observation.effectiveDateTime        |MIMIC\_Observation\_Micro\_Test                                                                 |Time is for when test is recorded                                                           |
|                         |Specimen.collection.collectedDateTime|MIMIC\_Specimen                                                                                 |                                                                                            |
|spec\_itemid             |Specimen.type.code                   |MIMIC\_Specimen                                                                                 |                                                                                            |
|spec\_type\_desc         |Specimen.type.display                |MIMIC\_Specimen                                                                                 |                                                                                            |
|storetime                |Observation.effectiveDateTime        |MIMIC\_Observation\_Micro\_Susc                                                                 |Time is for when result is available                                                        |
|test\_itemid             |Observation.identifier               |MIMIC\_Observation\_Micro\_Test, MIMIC\_Observation\_Micro\_Org, MIMIC\_Observation\_Micro\_Susc|part of identifier for all microbiology resources                                           |
|                         |Observation.code.coding.code         |MIMIC\_Observation\_Micro\_Test                                                                 |                                                                                            |
|                         |Observation.derivedFrom              |MIMIC\_Observation\_Micro\_Org, MIMIC\_Observation\_Micro\_Susc                                 |                                                                                            |
|                         |Observation.hasMember                |MIMIC\_Observation\_Micro\_Test, MIMIC\_Observation\_Micro\_Org                                 |                                                                                            |
|test\_name               |Observation.code.coding.display      |MIMIC\_Observation\_Micro\_Test                                                                 |                                                                                            |
|org\_itemid              |Observation.code.coding.code         |MIMIC\_Observation\_Micro\_Org                                                                  |reference to organism, identifer is combo of org\_itemid, test\_itemid and microspecimen\_id|
|                         |Observation.identifier               |MIMIC\_Observation\_Micro\_Org, MIMIC\_Observation\_Micro\_Susc                                 |Part of a larger identifier                                                                 |
|                         |Observation.hasMember                |MIMIC\_Observation\_Micro\_Test, MIMIC\_Observation\_Micro\_Org                                 |Part of a larger identifier                                                                 |
|                         |Observation.derivedFrom              |MIMIC\_Observation\_Micro\_Susc                                                                 |Part of a larger identifier                                                                 |
|org\_name                |Observation.code.coding.display      |MIMIC\_Observation\_Micro\_Org                                                                  |                                                                                            |
|isolate\_num             |Observation.identifier               |MIMIC\_Observation\_Micro\_Susc                                                                 |Part of the micro org identifier                                                            |
|                         |Observation.hasMember                |MIMIC\_Observation\_Micro\_Org                                                                  |Part of the referneced micro org identifier                                                 |
|ab\_itemid               |Observation.identifier               |MIMIC\_Observation\_Micro\_Susc                                                                 |Part of micro susc identifier                                                               |
|                         |Observation.hasMember                |MIMIC\_Observation\_Micro\_Org                                                                  |Part of reference to micro susc identifier                                                  |
|                         |Observation.code.coding.code         |MIMIC\_Observation\_Micro\_Susc                                                                 |                                                                                            |
|ab\_name                 |Observation.code.coding.display      |MIMIC\_Observation\_Micro\_Susc                                                                 |                                                                                            |
|dilution\_comparison     |Observation.extension.comparator     |MIMIC\_Observation\_Micro\_Susc                                                                 |Dilution extension                                                                          |
|dilution\_value          |Observation.extension.value          |MIMIC\_Observation\_Micro\_Susc                                                                 |Dilution extension                                                                          |
|interpretation           |Observation.valueCodeableConcept     |MIMIC\_Observation\_Micro\_Susc                                                                 |                                                                                            |
|comments                 |Observation.valueString              |MIMIC\_Observation\_Micro\_Test                                                                 |                                                                                            |
{: .grid #grid}