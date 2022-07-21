### MIMIC Terminology
Terminology used throughout MIMIC was captured into FHIR terminology systems. The majority of ValueSets are canonical versions of their CodeSystems. The are a couple exceptions:
- procedure_icd: joins together ICD9 and ICD10 CodeSystems
- diagnosis_icd: joins together ICD9 and ICD10 CodeSystems
- medication: combines the many medication source CodeSystems into one MIMIC medication ValueSet
- specimen_type: joins the micro and lab specimen type in one ValueSet
- ValueSets dervied from d_items CodeSystem: the ICU items defined in the d_items CodeSystem are made into subset ValueSets for chartevents, datetimeevents, outputevents, and procedurevents

### MIMIC CodeSystems
- [MimicAdmissionClass]
- [MimicBodySite]
- [MimicDItems]
- [MimicDLabItems]
- [MimicLabFlags]
- [MimicLabFluid]
- [MimicLabPriority]
- [MimicMedAdminCategoryICU]
- [MimicMedicationFormularyDrugCd]
- [MimicMedicationFrequency]
- [MimicMedicationICU]
- [MimicMedicationGSN]
- [MimicMedicationMethod]
- [MimicMedicationMix]
- [MimicMedicationName]
- [MimicMedicationPoeIv]
- [MimicMedicationRoute]
- [MimicMedicationSite]
- [MimicMicrobiologyAntibiotic]
- [MimicMicrobiologyInterpretation]
- [MimicMicrobiologyOrganism]
- [MimicMicrobiologyTest]
- [MimicObservationCategory]
- [MimicProcedureCategory]
- [MimicProcedureIcd9]
- [MimicProcedureIcd10]
- [MimicSpecTypeDesc]
- [MimicUnits]


### MIMIC ValueSets
Listing non canonical valuesets for MIMIC-profiles
- [MimicCharteventsDItems]
- [MimicDatetimeeventsDItems]
- [MimicDiagnosisICD]
- [MimicMedication]
- [MimicOutputeventsDItems]
- [MimicProcedureeventsDItems]
- [MimicProcedureICD]
- [MimicSpecimenType]


{% include link-list.md %}
