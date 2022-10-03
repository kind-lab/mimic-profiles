### Introduction
The MIMIC Implementation Guide is based on [FHIR R4](http://hl7.org/fhir/R4/index.html) and is heavily influenced by [US Core STU4](http://hl7.org/fhir/us/core/STU4/). The profiles and terminology in the MIMIC IG capture the [MIMIC-IV](https://physionet.org/content/mimiciv/2.0/) clinical care database in FHIR. 

### What is MIMIC-IV?
The Medical Information Mart for Intensive Care (MIMIC)-IV is a database of critical care records ~300,000 patients admitted to Beth Israel Deaconess Medical Center (BIDMC). MIMIC-IV has gained traction in the community due to its transparent mechanism of data access, reasonably large sample size, and authentic capture of a real-world electronic health record database. MIMIC-IV has been utilized in over 3000 publications, exploring retrospective analyses and research application development.   

### Usage of the MIMIC IG
A great deal of interest exists around FHIR development using real world fhir stores. The MIMIC IG has been used as the foundation to create MIMIC-IV-on-FHIR as one of the first openly accessible real-world FHIR stores. 


The MIMIC IG is an early stage implementation guide. As usage of the MIMIC IG and the MIMIC-IV-on-FHIR datastore increase, the IG will be extended and refined. Future plans for the MIMIC IG can be found on the [Roadmap] page.


### Walkthrough of Implementation Guide
- [Home]\: This page provides an introduction, background, and walkthrough for the MIMIC IG.
- [Guidance]\: These pages provide guidance on how best to use and understand the MIMIC IG 
  - [General Guidance]\: This page walks through the general guidance for using the MIMIC IG.
  - [Terminology Tour]\: This page walks through the decisions and usage of terminology.
  - [Applications]\: This page lists out potential applciations for the MIMIC-IV-on-FHIR datastore.
  - [Tutorials]\: This page details tutorials that were developed to accelerate adoption of the data.
  - [Roadmap]\: This page includes the future direction for this implementation guide.
- [Subsets]\: These pages detail subsets of the IG that can be explored. 
  - [Microbiology Subset]\:  This page guide the user through the microbiology workflows found in mimic-fhir
  - [Medication Subset]\: This page guide the user through the different medication workflows found in mimic-fhir
  - [ED Subset]\: This page guide the user through the different ED workflows found in mimic-fhir
  - [ICU Subset]\: This page guide the user through the different ICU workflows found in mimic-fhir
- [Mappings]
  - [MIMIC-IV Mappings]\: This page details the mappings to convert [MIMIC-IV](https://physionet.org/content/mimiciv/2.0/) into FHIR
  - [MIMIC-ED Mappings]\: This page details the mappings to convert [MIMIC-ED](https://physionet.org/content/mimic-iv-ed/2.0/) into FHIR
- Artifacts\: These pages list out the profiles, extensions and terminology used in the IG.
  - [Profiles]\: This page lists the MIMIC Profiles that are used to capture MIMIC-IV into FHIR.
  - [Terminology]\: This page lists out the CodeSystems and ValueSets created to capture MIMIC terminology.
  - [Extensions]\: This page lists the extensions that were created to assit in MIMIC to FHIR mapping
- [Examples]\: This page includes lists of examples for each of the MIMIC IG profiles.
- [Downloads]\:  This page provides links to download MIMIC IG artifacts and MIMIC-IV-on-FHIR data.
- [Change Log]\: This page docuuments versioning changes.  


### MIMIC Profiles
- [MIMIC Condition]
- [MIMIC Encounter]
- [MIMIC Medication]
- [MIMIC Medication Administration]
- [MIMIC Medication Administration ICU]
- [MIMIC Medication Dispense]
- [MIMIC Medication Dispense ED]
- [MIMIC Medication Request]
- [MIMIC Medication Statement ED]
- [MIMIC Observation Chartevents]
- [MIMIC Observation Datetimeevents]
- [MIMIC Observation ED]
- [MIMIC ObservationLabevents]
- [MIMIC Observation Micro Org]
- [MIMIC Observation Micro Susc]
- [MIMIC Observation Micro Test]
- [MIMIC Observation Outputevents]
- [MIMIC Observation Vital Signs]
- [MIMIC Organization]
- [MIMIC Patient]
- [MIMIC Procedure]
- [MIMIC Procedure ED]
- [MIMIC Procedure ICU]
- [MIMIC Specimen]


{% include link-list.md %}