### MIMIC to FHIR Mappings
The MIMIC-IV database was converted into FHIR. The tables from MIMIC-IV were each mapped to a one or more resources. The diagram below depicts these mappings:


{% include img.html img="mimic-to-fhir-mappings.png" caption="Overall mappings MIMIC to FHIR" %}

Custom profiles were created to house the tables coming into FHIR. This was necessary to handle the unique terminology coming from MIMIC. In the following sections you will see tables detailing the mapping from each MIMIC table to these MIMIC-FHIR profiles.

### Condition

{% include map-condition.md %}

### Encounter

{% include map-encounter.md %}

{% include map-encounter-icu.md %}

### MedicationAdministration

{% include map-medication-administration.md %}

{% include map-medication-administration-icu.md %}

### MedicationDispense

{% include map-medicationdispense.md %}

### MedicationRequest

{% include map-medicationrequest.md %}

### Observation - labevents

{% include map-observation-labevents.md %}

### Observation - microbiology

{% include map-observation-micro-test.md %}
{% include map-observation-micro-org.md %}
{% include map-observation-micro-susc.md %}

### Observation - ICU

{% include map-observation-chartevents.md %}
{% include map-observation-datetimeevents.md %}
{% include map-observation-outputevents.md %}

### Location

{% include map-location.md %}

### Patient

{% include map-patient.md %}

### Procedure

{% include map-procedure.md %}
{% include map-procedure-icu.md %}

### Specimen

{% include map-specimen.md %}
