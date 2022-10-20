### Medication Subset
The medication information stored in the MIMIC-IV profiles covers many hospital medication workflows. The medication related data can be pulled out separately to be used as test data for medication applications.

The medication workflow found in the MIMIC-IV Profiles often appear in one of 3 main ways in MIMIC-IV-on-FHIR:
- Full view: MedicationRequest -> MedicationDispense -> MedicationAdminsitration
- Historical view: MedicationStatement only
- Point of care view: MedicationAdministration only

Each workflow can be explored in depth to test robustness of your application.

### Relevant profiles in Medication subset
- [MimicEncounter]
- [MimicMedication]
- [MimicMedicationAdministration]
- [MimicMedicationAdministrationICU]
- [MimicMedicationDispense]
- [MimicMedicationDispenseED]
- [MimicMedicationRequest]
- [MimicMedicationStatementED]
- [MimicPatient]

### Filter Medication data
To retrieve all medication resources, a search should be applied to MimicPatient. Searching for Patient resources returning all linked resources that have a resource type of Encounter, Medication, MedicationAdministration, MedicationDispense, MedicationRequest, and MedicationStatement.

### FHIR Medication Background
Medication in FHIR is organized into 5 resources
- *Medication*: Stores all medications and medication mixes. 
- *MedicationRequest*: Any prescription or order for medication is stored here.
- *MedicationDispense*: Pharmacy or in hospital dispensation of medication
- *MedicationAdministration*: The actual administration of the requested/dispensed medication
- *MedicationStatement*: The historical record of medication usage

The hospital medicine workflow prescribe -> dispense -> administer in FHIR becomes:  MedicationRequest -> MedicationDispense -> MedicationAdministration. MedicationStatement is often taken separately to record historical medication usage. The interconnected medication resources are shown below:


{% include img.html img="medication-mapping.png" caption="Medication Mappings" %}


### Mapping MIMIC medication tables to FHIR
The medication across MIMIC do NOT have one single source, thus we need to create multiple CodeSystems fully describe the medication in MIMIC.

The medication CodeSystems that were generated were:

| CodeSystem | Source | Usage | Notes|
| --- | --- | --- | --- |
| medication-formulary-drug-cd | prescriptions.formulary_drug_cd and emar_detail.product_code | Medication for MedicationRequest and MedicationAdministration | For requests, can be part of med mixes |
| medication-name | prescriptions.drug, pharmacy.medication, emar.medication | Medication for MedicationDispense and some MedicationAdministration | Only used in medadmin if drug product_code is not present |
| medication-poe-iv | poe.order_type | Medication for MedicationAdministration | Only used if product code and drug name are not present |
| medication-ndc | prescriptions.ndc | Medication for MedicationRequest | NDC is used as the primary identifier in medication coming out of prescriptions |
| medication-gsn | prescriptions.gsn | Medication for MedicationRequest | GSN is the secondary identifier in medication coming out of prescriptions |
| medication-icu | d_items.itemid for inputevents| Medication for MedicationAdministrationICU | ICU meds are stored separately from the rest of the medication |
{: .grid #grid}


For the generation of medication resources the CodeSystems were effectively translated into fhir resources. The exception was prescription medication. Since there are multiple identifiers in prescriptions (ndc, gsn, formulary_drug_cd, drug name) more distinct medication were created. Some notes from creating prescription medication:
- Medication NDC can map to multiple gsn and formulary drug codes.
- Medication GSN can map to multiple ndc and formulary drug codes.
- Medication formulary drug codes often map to multiple NDC and GSN.
- The intermixing of all the identifiers led to more medication resources being created to get full coverage.

The other more complex medication was medication mixes. These were constructed from prescriptions with multiple drugs linked to one pharmacy_id. Thus once the base medication were created, the medication mixes were generated with references to the base medication in the *ingredients* element.

{% include link-list.md %}
