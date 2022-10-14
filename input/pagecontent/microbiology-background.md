### Microbiology Subset
The microbiology data in MIMIC-IV-on-FHIR provides great real-world data for microbiology workflows. The microbiology data can be pulled out of MIMIC-IV-on-FHIR as a subset to test and explore in more lab focused applications.

### Relevant profiles in Medication subset
- [MimicEncounter]
- [MimicObservationMicroOrg]
- [MimicObservationMicroSusc]
- [MimicObservationMicroTest]
- [MimicPatient]
- [MimicSpecimen]

### Filter Microbiology data
To retrieve all microbiology resources, a search should be applied to MimicPatient. Searching for Patient resources returning all linked resources that have a profiles of MimicEncounter, MimicObservationMicroOrg, MimicObservationMicroSusc, MimicObservationMicroTest, MimicSpecimen.

### Microbiology Workflow
The MIMIC data is mapped into three microbiology profiles in FHIR. The microbiology framework is:
- Test: The test being completed
- Organism: The organism the test is completed on
- Susceptibility:The organisms antibiotic susceptibility result 

In FHIR the test->organism->susceptibility framework becomes ObservationMicroTest->ObservationMicroOrg->ObservationMicroSusc. Each of the profiles is based on the US Core [ObservationLabs profile](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html).


### Example microbiology event
A typical microbiology event is a urine sample being tested for susceptability. The diagram below shows how this microbiology event would be represented in FHIR:

{% include img.html img="microbiology-mapping.png" caption="Microbiology Mappings" %}
