|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|patients|subject_id|Patient.id|[MimicPatient]|Convert to UUID5|
|patients|subject_id|Patient.identifier|[MimicPatient]||
|patients|gender|Patient.gender|[MimicPatient]||
|patients|anchor_age|Patient.birthDate|[MimicPatient]|Using transfers.intime as a relative point to create a birthDate|
|patients|dod|Patient.deceasedDateTime|[MimicPatient]||
|patients|gender|Patient.extension:birthsex|[MimicPatient]||
|admissions|ethnicity|Patient.extension:race|[MimicPatient]|Map MIMIC ethnicity to the FHIR race categories|
|admissions|ethnicity|Patient.extension:ethnicity|[MimicPatient]|Map MIMIC ethnicity to the FHIR ethnicity groups|
|admissions|marital_status|Patient.maritalStatus|[MimicPatient]||
|admissions|language|Patient.communication.language|[MimicPatient]||

{: .grid #grid}

* Patient.name is created with a combination of "Patient_" and subject_id being concatenated
* Patient.managingOrganization is set to BIDMC

{% include link-list.md %}
