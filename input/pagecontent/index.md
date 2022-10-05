### Introduction

The MIMIC profiles are intended to translate the MIMIC-IV database into FHIR. The purpose is to capture MIMIC-IV as is, creating terminology and profiles to represent all aspects of MIMIC.


A great deal of interest exists around FHIR development using real world fhir stores. MIMIC-FHIR looks to fill this need. 

### Background

The [Medical Information Mart for Intensive Care (MIMIC)-IV](https://physionet.org/content/mimiciv/) is a database of deidentified critical care records of ~300,000 patients admitted to Beth Israel Deaconess Medical Center (Boston, MA). MIMIC-IV is released publicly on [PhysioNet](https://physionet.org/), a repository for medical research data, as a set of tabular CSV files. This real-world, deidentified, and freely available database should advance and enable a multitude of research applications.

Data from three in-hospital information systems together form MIMIC-IV, namely: a custom hospital wide electronic health record, an intensive care unit (ICU) specific clinical information system, and an emergency department information system ([MIMIC-IV-ED](https://physionet.org/content/mimic-iv-ed/)). Consequently, MIMIC-IV comprises of data from all three data sources and follows a modular structure. Each module highlights data provenance and facilitates both individual and combined use of disparate data sources. 

### Walkthrough of Implementation Guide
- [MIMIC to FHIR Mappings]\: These pages provide a detailed breakdown of the element mappings from MIMIC to FHIR
- FHIR Artifacts
  - [Profiles]\: This page lists the MIMIC Profiles that are used to capture MIMIC-IV into FHIR.
  - [Terminology]\: This page lists out the CodeSystems and ValueSets created to capture MIMIC terminology.
  - [Extensions]\: This page lists the extensions that were created to assit in MIMIC to FHIR mapping
- Background
  - [Microbiology Background]\:  These pages guide the user through the microbiology workflows found in mimic-fhir
  - [Medication Background]\: These pages guide the user through the different medication workflows found in mimic-fhir


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