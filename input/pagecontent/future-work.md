The MIMIC-IV Profiles are still growing in the FHIR world. The usage of MIMIC-IV-on-FHIR data will guide the future directions of this IG. The current plan for the IG breaks into three sections:
- [US Core Integration](#us-core-integration)
- [Cloud access of MIMIC-IV-on-FHIR data](#cloud-access-of-mimic-iv-on-fhir-data)
- [Increased subset options](#increased-subset-options)

### US Core Integration
The MIMIC-IV Profiles captures the [MIMIC-IV database](https://physionet.org/content/mimiciv/2.0/) as true to the source hospital system as possible. In keeping true to the source hospital system, custom codesystem were generated to capture the source terminology. In future work the goal is to make the MIMIC-IV data conformant to [US Core](https://www.hl7.org/fhir/us/core/) for wider adoption.

The MIMIC-IV Profiles were heavily infuenced by US Core, but did not conform due to strict terminology bindings. Mapping over the MIMIC-IV terminology to US Core terminology systems would make the MIMIC-IV-on-FHIR data conformant to US Core. To accomplish this the main steps are:
- Create ConceptMaps to translate MIMIC-IV terminology to US Core terminology
- Ensure cardinality of elements matches US Core profiles


### Cloud access of MIMIC-IV-on-FHIR data
Additionally there will be work to generate more cloud access to use the MIMIC-IV-on-FHIR data. The current plan is to make these cloud FHIR stores accessible:
- [Google Healthcare API](https://cloud.google.com/healthcare-api)
- [Azure Health Data Services](https://azure.microsoft.com/en-us/products/health-data-services/)
- [Amazon Healthlake](https://docs.aws.amazon.com/healthlake/latest/devguide/what-is-amazon-health-lake.html)


### Increased subset options 
Currently the data can be download with all resources related to patients. Custom query and download scripts will be developed to enable subsetting of the MIMIC-IV-on-FHIR data. These subsets will allow application development for specific use cases. The future subsets will include:
- ICU Data
- ED Data
- Lab Data
- Medication Workflow Data
