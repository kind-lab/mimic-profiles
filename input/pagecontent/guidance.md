### Introduction
This guide walks through the profiles found in the MIMIC-IV Profiles.

An exemplar patient generated using the MIMIC-IV profiles will appear as Figure 1. The profiles fall into one of 6 categories:
1. Administration: Resources related to patient information and visit encounters.
2. Organizational: Resources related to careunit location and hospital organizations.
3. Charted Observations: Resources related to charted events occuring in the ED and ICU.
4. Specimen Observations: Resources related specimen collected samples.
5. Medications: Resources related to the medication workflow.
6. Orders: Resources related to condition and procedure orders


{% include img-small.html img="average-mimic-fhir-patient.png" caption="Exemplar MIMIC-IV FHIR Patient with their resources" %}

Modelling was completed to map the MIMIC-IV tables into FHIR. More detail can be found on the [MIMIC-IV Mappings] and [MIMIC-IV-ED Mappings] pages.

### Administration Profiles
The majority of profiles reference MimicPatient and MimicEncounter. The referencing is useful to group together patient related resources or encounter specific resources.

#### [MimicPatient]
The MimicPatient resource was heavily influenced by the US Core Patient profile. The extensions for ethncity, race, and birthsex have been added to MimicPatient to capture the US related context. These extensions being present will make future mappings to US Core smoother.

#### [MimicEncounter]
The MimicEncounter resource combines encounter from the ED, ICU and main hospital for MIMIC-IV. 

### Organizationl Profiles
#### [MimicLocation]
The careunits found in MIMIC-IV were created as MimicLocation instances. The MimicLocation resource is often referenced by MimicEncounter in a list of all the careunits a patient has visited.

#### [MimicOrganization]
The single hospital Beth Isreal Deaconess Medical Center(BIDMC) is captured as a MimicOrganization. The MimicOrganization is referenced by MimicPatient to specify the organization responsible for maintaining patient records.

### Charted Observations Profiles
Charted observations capture the momement to moment documentation that occurs in both the emergency department and the ICU. Profiles were kept distinct to keep the provenance of information clear.

#### [MimicObservationChartevents]
Charted events in the ICU include over 60 categories of entries. The events can include alarms, dialysis, line insertions and much more. The codes used for these are specific to the source hospital systems so are not in a standardized SNOMED codes.

#### [MimicObservationDatetimeevents]
Datetime events occur in the ICU and document time sensitive information. For example timing for care plans and access line insertions can be documented here.

#### [MimicObservationED]
Additional observations captured in the ED are stored in MimicObservationED. The current events captured are:
- Pain assessment
- Heart rate rhythm
- Chief complaint
- Accuity assessment

#### [MimicObservationOutputevents]
Outputevents in the ICU primarily include output and drain events. These events are documented by a timestamp and event code.


#### [MimicObservationVitalSigns]
Vital signs that are captured in the ED are documented in MimicObservationVitalSigns. The vital signs currently captured are:
- Body temperature
- Heart rate
- Respiratory rate
- Oxygen saturation
- Blood pressure


### Specimen Observations Profiles
#### [MimicObservationLabevents]
Laboratory tests are captured in MimicObservationLabevents. The codes used in the MIMIC-IV were specific to the source hospital, so the lab codes are bound to a custom ValueSet. 

#### [MimicObservationMicroTest]
Microbiology reports are divided among three resources. The top level resource is MimicObservationMicroTest which captures the microbiology test that was run. the MimicObservationMicroTest then points to the MimicObservationMicroOrg to specify which organism were tested.

#### [MimicObservationMicroOrg]
The MimicObservationMicroOrg profile captures the microbiology information about an organism. The MimicObservationMicroOrg references the parent test in MimicObservationMicroTest and points to the many antiobitic susceptibilty events in MimicObservationMicroSusc.

#### [MimicObservationMicroSusc]
The MimicObservationMicroSusc profile captures the antibiotic information and the susceptiblity to said antibiotic. MimicObservaitonMicroSusc references the parent organism that is being testd in MimicObservationMicroOrg. 

#### [MimicSpecimen]
The MimicSpecimen profile captures information on the patient specimen collected for laboratory or microbiology testing. The main informtion stored are the specimen identifier and the specimen type (ie blood or urine).

### Medication Profiles
The medication workflow found in the MIMIC-IV Profiles are used in one of 3 main ways in MIMIC-IV-on-FHIR:
- Full view: MedicationRequest -> MedicationDispense -> MedicationAdminsitration
- Historical view: MedicationStatement only
- Point of care view: MedicationAdministration only

#### [MimicMedication]
The medication found in the electronic medication administration records (EMAR) and during documented bedside events are all captured in MimicMedication. Further detail on the medication can be found on the [Medication Subset] page.

#### [MimicMedicationRequest]
The medication orders received in the EMAR or logged in the pharmacy are captured in MimicMedicationRequest. This will include details of the medication and timing for delivery.

#### [MimicMedicationDispense]
MimicMedicationDispense references back to the MimicMedicationRequest that started the medication workflow. At the point of the pharmacy the MimicMedicationDispense instance is created to document the medication dispensation. 

#### [MimicMedicationAdministration]
MimicMedicationAdministration can be a stand alone instance or part of a full medicaiton workflow from request, dispense, and to administration. The profile captures the medication details and timing of administration (and details of infusion of necessary).

#### [MimicMedicationAdministrationICU]
A small subset of medication are delivered at the point of care in the ICU without prior requests necessary. These medication are primarily fluids and very common medications (ie acetaminophen).

#### [MimicMedicationDispenseED]
In the ED, medication can be dispensed if necessary. This process is captured in MimicMedicationDispenseED with timestamps and medicaiton details.

#### [MimicMedicationStatementED]
Medicaiton history that is discoverd in the ED is stored in MimicMedicationStatementED.

### Order Profiles
#### [MimicCondition]
Disease and diagnsois that are documented throughout a patients hospital stay are captured in MimicCondition. The diagnoses codes are either ICD9 or ICD10.

#### [MimicProcedure]
The procedure profiles were kept separate to make the provenance of information clear (main vs ED vs ICU). The procedure orders are captured as either ICD9 or ICD10.

#### [MimicProcedureED]
The MimicProcedureED profile only captures ED specific procedures. In MIMIC-IV the only procedures that occur are either triaging or vital sign taking. These codes are captured as SNOMED-CT codes.

#### [MimicProcedureICU]
A small subset of procedures are specifically documented in the ICU for the MIMIC-IV database. These procedures are captured in MimicProcedureICU and include imaging, ventalation, and intubation. The information collected is primarily timing and procedure codes in ICD9 or ICD10.

{% include link-list.md %}
