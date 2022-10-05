### Introduction
The MIMIC-IV Profiles are based on [FHIR R4](http://hl7.org/fhir/R4/index.html) and is heavily influenced by [US Core STU4](http://hl7.org/fhir/us/core/STU4/). The profiles and terminology in the MIMIC-IV Profiles capture the [MIMIC-IV](https://physionet.org/content/mimiciv/2.0/) clinical care database in FHIR. 

### What is MIMIC-IV?
The Medical Information Mart for Intensive Care (MIMIC)-IV is a database of critical care records ~300,000 patients admitted to Beth Israel Deaconess Medical Center (BIDMC). MIMIC-IV has gained traction in the community due to its transparent mechanism of data access, reasonably large sample size, and authentic capture of a real-world electronic health record database. MIMIC-IV has been utilized in over 3000 publications, exploring retrospective analyses and research application development.   

### Usage of the MIMIC-IV Profiles
A great deal of interest exists around FHIR development using real world fhir stores. The MIMIC-IV Profiles have been used as the foundation to create MIMIC-IV-on-FHIR as one of the first openly accessible real-world FHIR stores. The data is open access thanks to deidentification efforts carried out in the initial MIMIC-IV database.


The MIMIC-IV IG is an early stage implementation guide. As usage of the MIMIC-IV IG and the MIMIC-IV-on-FHIR datastore increase, the IG will be extended and refined. Future plans for the MIMIC-IV Profiles can be found on the [Roadmap] page.

### Intended Audience
The MIMIC-IV Profiles and the resulting datastore MIMIC-IV-on-FHIR are meant for use in research and development. The audience then breaks into two categories:
1. Researchers: The MIMIC-IV-on-FHIR datastore can be used to test and explore novel FHIR applications
2. Developers: The datastore can be used to test the robustness of applications to real-world data.


### Walkthrough of Implementation Guide
- [Home]\: This page provides an introduction, background, and walkthrough for the MIMIC-IV Profiles.
- Background\:
  - [General Background]\: Information on MIMIC-IV and all the modules in it.
  - [MIMIC-IV Mappings]\: Mapping tables converting [MIMIC-IV](https://physionet.org/content/mimiciv/2.0/)columns to FHIR elements.
  - [MIMIC-IV-ED Mappings]\: Mapping tables converting [MIMIC-IV-ED](https://physionet.org/content/mimic-iv-ed/2.0/) columns to FHIR elements.
- [Guidance]\: These pages provide guidance on how best to use and understand the MIMIC IG 
  - [General Guidance]\: This page walks through the general guidance for using the MIMIC IG.
  - [Terminology Guide]\: This page walks through the decisions and usage of terminology.
  - [Applications]\: This page lists out potential applciations for the MIMIC-IV-on-FHIR datastore.
  - [Tutorials]\: This page details tutorials that were developed to accelerate adoption of the data.
  - [Future Work]\: This page includes the future direction for this implementation guide.
- Subsets\: These pages detail subsets of the IG that can be explored. 
  - [Microbiology Subset]\:  This page guide the user through the microbiology workflows found in mimic-fhir
  - [Medication Subset]\: This page guide the user through the different medication workflows found in mimic-fhir
  - [ED Subset]\: This page guide the user through the different ED workflows found in mimic-fhir
  - [ICU Subset]\: This page guide the user through the different ICU workflows found in mimic-fhir
- [Artifacts]\: This pages list out the profiles, extensions and terminology used in the IG.
- [Examples]\: This page includes lists of examples for each of the MIMIC IG profiles.
- [Downloads]\:  This page provides links to download MIMIC-IV IG artifacts and MIMIC-IV-on-FHIR data.
- [Change Log]\: This page docuuments versioning changes.  


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


{% include link-list.md %}