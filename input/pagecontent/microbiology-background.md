### FHIR Microbiology
The MIMIC data is mapped into three microbiology profiles in FHIR. The microbiology framework is:
- Test: The test being completed
- Organism: The organism the test is completed on
- Susceptibility:The organisms antibiotic susceptibility result 

In FHIR the test->organism->susceptibility framework becomes ObservationMicroTest->ObservationMicroOrg->ObservationMicroSusc. Each of the profiles is based on the US Core [ObservationLabs profile](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html).


### Example microbiology event
A typical microbiology event is a urine sample being tested for susceptability. The diagram below shows how this microbiology event would be represented in FHIR:

{% include img.html img="microbiology-mapping.png" caption="Microbiology Mappings" %}
