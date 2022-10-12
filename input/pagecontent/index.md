### Introduction
The MIMIC-IV Implementation Guide captures the [Medical Information Mart for Intensive Care (MIMIC)-IV](https://physionet.org/content/mimiciv/) clinical care database in FHIR. These MIMIC-IV Profiles are based on [FHIR R4](http://hl7.org/fhir/R4/index.html) and are heavily influenced by [US Core STU4](http://hl7.org/fhir/us/core/STU4/).

### What is MIMIC-IV?
[MIMIC-IV](https://physionet.org/content/mimiciv/2.0/) is a database of deidentified critical care records of ~300,000 patients admitted to Beth Israel Deaconess Medical Center (Boston, MA). MIMIC-IV is released publicly on [PhysioNet](https://physionet.org/), a repository for medical research data, as a set of tabular CSV files. This real-world, deidentified, and freely available database should advance and enable a multitude of research applications. MIMIC-IV has gained traction in the community due to its transparent mechanism of data access, reasonably large sample size, and authentic capture of a real-world electronic health record database. MIMIC-IV has been utilized in over 3000 publications, exploring retrospective analyses and research application development.

Data from three in-hospital information systems together form MIMIC-IV, namely: a custom hospital wide electronic health record, an intensive care unit (ICU) specific clinical information system, and an emergency department information system ([MIMIC-IV-ED](https://physionet.org/content/mimic-iv-ed/)). A total of five modules facilitate both individual and combined use of the data in MIMIC-IV. 

{% include img.html img="mimic-modules-overview.png" caption="General overview of MIMIC-IV" %}

### Usage of the MIMIC-IV Profiles
A great deal of interest exists around FHIR development using real world FHIR stores. The MIMIC-IV Profiles have been used as the foundation to create MIMIC-IV-on-FHIR as one of the first openly accessible real-world FHIR stores. The data is open access thanks to deidentification efforts carried out in the initial MIMIC-IV database.

The MIMIC-IV IG is an early stage implementation guide. As usage of the MIMIC-IV IG and the MIMIC-IV-on-FHIR datastore increase, the IG will be extended and refined. Future plans for the MIMIC-IV Profiles can be found on the [Roadmap] page.

### Intended Audience
The MIMIC-IV Profiles and the resulting datastore MIMIC-IV-on-FHIR are meant for use in research and development. The audience then breaks into two categories:
1. Researchers: The MIMIC-IV-on-FHIR datastore can be used to test and explore novel FHIR applications
2. Developers: The datastore can be used to test the robustness of applications to real-world data.

### Walkthrough of Implementation Guide
- [Home]\: This page provides an introduction, background, and walkthrough for the MIMIC-IV Profiles.
- Background\:
  - [General Background]\: Information on MIMIC-IV and all the modules in it.
  - [MIMIC-IV Mappings]\: Mapping tables converting [MIMIC-IV](https://physionet.org/content/mimiciv/2.0/) columns to FHIR resources.
  - [MIMIC-IV-ED Mappings]\: Mapping tables converting [MIMIC-IV-ED](https://physionet.org/content/mimic-iv-ed/2.0/) columns to FHIR resources.
- [Guidance]\: These pages provide guidance on how best to use and understand this IG.
  - [General Guidance]\: This page walks through the general guidance for using MIMIC-IV-on-FHIR.
  - [Terminology Guide]\: This page walks through the decisions and usage of terminology.
  - [Applications]\: This page lists out potential applciations for the MIMIC-IV-on-FHIR datastore.
  - [Tutorials]\: This page details tutorials that were developed to accelerate adoption of the data.
  - [Future Work]\: This page includes the future direction for this IG.
- Subsets\: These pages detail subsets of the IG that can be explored. 
  - [Microbiology Subset]\:  This page guide the user through the microbiology workflows found in MIMIC-IV-on-FHIR.
  - [Medication Subset]\: This page guide the user through the different medication workflows found in MIMIC-IV-on-FHIR.
  - [ED Subset]\: This page guide the user through the different ED workflows found in MIMIC-IV-on-FHIR.
  - [ICU Subset]\: This page guide the user through the different ICU workflows found in MIMIC-IV-on-FHIR.
- [Artifacts]\: This pages list out the profiles, extensions and terminology used in the IG.
- [Examples]\: This page includes lists of examples for each of the MIMIC IG profiles.
- [Downloads]\:  This page provides links to download MIMIC-IV IG artifacts and MIMIC-IV-on-FHIR data.
- [Change Log]\: This page documents versioning changes.  


### MIMIC Profiles
- [MimicCondition]
- [MimicEncounter]
- [MimicLocation]
- [MimicMedication]
- [MimicMedicationAdministration]
- [MimicMedicationAdministrationICU]
- [MimicMedicationDispense]
- [MimicMedicationDispenseED]
- [MimicMedicationRequest]
- [MimicMedicationStatementED]
- [MimicObservationChartevents]
- [MimicObservationDatetimeevents]
- [MimicObservationED]
- [MimicObservationLabevents]
- [MimicObservationMicroOrg]
- [MimicObservationMicroSusc]
- [MimicObservationMicroTest]
- [MimicObservationOutputevents]
- [MimicObservationVitalSigns]
- [MimicOrganization]
- [MimicPatient]
- [MimicProcedure]
- [MimicProcedureED]
- [MimicProcedureICU]
- [MimicSpecimen]


### Authors

| Name | Organization |
| --- | --- | --- |
| Alex M. Bennett | The Hospital for Sick Children | 
| Philip van Damme | Amsterdam UMC |
| Alistair E. W. Johnson | The Hospital for Sick Children |
| Hannes Ulrich | Kiel University |
| Joshua Wiedekopf | University of Lübeck |

{% include link-list.md %}