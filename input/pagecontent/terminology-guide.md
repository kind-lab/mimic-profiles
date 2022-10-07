### Overview
MIMIC-IV contained a number of standard and non-standard terminologies. The MIMIC IG adopted widespread code systems when possible (e.g. SNOMED CT), and otherwise created a new CodeSystem with relevant terms found in the database (e.g. drug names). In total, 34 CodeSystems and 35 ValueSets were generated. In most situations, a single CodeSystem resource is used in a single ValueSet resource to bind all observed terms for a given field in MIMIC-IV. The terminology used in the MIMIC IG breaks into four categories:
1. [Required ValueSets](#required-valuesets)\: Systems that needed to be mapped to.
2. [Extensible ValueSets](#extensible-valuesets)\: Systems that were mapped to if possible, or extended with custom codes.
3. [Custom ValueSets](#custom-valuesets)\: ValueSets that did not fit with any current FHIR terminology systems
4. [Custom CodeSystems](#custom-codesystems)\: CodeSystems that did not fit with any current FHIR terminology systems


### Required ValueSets
In the situation of a required ValueSet (ie Patient.gender bound to AdministrativeGender), mappings occurred to translate the MIMIC-IV codes to the required ValueSet. This was only a small group of ValueSets since there are only a few required ValueSets in the base FHIR resources.


### Extensible ValueSets
In the situation of an extensible ValueSet (ie Patient.maritalStatus bound to MaritalStatus), mappings occurred if the codes from MIMIC-IV fit into the ValueSet. If codes from MIMIC-IV did not fit in the ValueSet, these codes were added to make a new extended ValueSet. Again with the base FHIR resources, the number of extensible ValueSets are minimal so only a small group of ValueSets were extended.

### Custom ValueSets
In order to bind the custom CodeSystems to FHIR elements, custom ValueSets were made. The majority of ValueSets in the MIMIC IG are canonical sets (covers all codes) of the custom CodeSystems. In a few select scenarios there were ValueSets that combined multiple custom CodeSystems. For example, there were two specimen type CodeSystems created: one for [Lab specimen] and one for [Microbiology specimen] that was combined into one ValueSet, [MimicSpecTypeDesc], for specimen type. Multiple CodeSystems are generated to distinguish provenane of where the codes are derived from.

### Custom CodeSystems
When no current CodeSystems captured the codes from MIMIC-IV, a new custom CodeSystem was made. The distinct coded values were pulled from the database and translated into a CodeSystem. The CodeSystem codes may extend with versions of MIMIC-IV as new patients and hospital information is added. For all custom terminology check out the [Artifacts] page. Additional notes on some CodeSystems are provided below.

#### ICD CodeSystem
Custom ICD-9 and ICD-10 CodeSystems were made for procedure and condition codes. The current [ICD-9](http://hl7.org/fhir/sid/icd-9-cm) and [ICD-10](http://hl7.org/fhir/sid/icd-10) contain a fracture set of codes and did not encapsulate all the codes found in MIMIC-IV. Additionally there are some deprecated ICD codes found in MIMIC-IV that needed to be stored. Future work will look to integrate the canonical ICD-9 and ICD-10 FHIR codesystems in place of the custom MIMIC-IV CodeSystems.

#### GSN CodeSystem
Generic Sequence Number codes for medication does not currently have a standard FHIR CodeSystem. Thus a custom CodeSystem to capture this information was made. If a canonical GSN CodeSystem is developed in FHIR then we will reference that in future versions of the guide.

#### CPT CodeSystem
The CPT codes did not validate against the current FHIR [CPT CodeSystem](http://www.ama-assn.org/go/cpt). A custom CPT codesystem was made to capture the MIMIC-IV codes in FHIR. Future work will look to integrate with the FHIR CPT CodeSystem.

### Future Work
The MIMIC-IV Profiles were heavily infuenced by US Core, but did not conform due to strict terminology bindings. Mapping over the MIMIC-IV terminology to US Core terminology systems would make the MIMIC-IV-on-FHIR data conformant to US Core. ConceptMaps will be created to translate MIMIC-IV terminology to US Core terminology.


{% include link-list.md %}