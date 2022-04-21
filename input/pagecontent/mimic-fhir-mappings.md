### MIMIC to FHIR Mappings
The MIMIC-IV database was converted into FHIR. The tables from MIMIC-IV were each mapped to a one or more resources. The diagram below depicts these mappings:


{% include img.html img="mimic-to-fhir-mappings.png" caption="Overall mappings MIMIC to FHIR" %}

Custom profiles were created to house the tables coming into FHIR. This was necessary to handle the unique terminology coming from MIMIC. In the following sections you will see tables detailing the mapping from each MIMIC table to these MIMIC-FHIR profiles.

### Condition

{% include map-condition.md %}

### Encounter

{% include map-encounter.md %}

### Encounter ICU

{% include map-encounter-icu.md %}

### mimic-core to FHIR

{% include map-mimic-core.md %}

### mimic microbiologyevents to FHIR

{% include map-mimic-microbiologyevents.md %}

### mimic-hosp medication to FHIR

{% include map-mimic-hosp-meds.md %}

### mimic-hosp diagnosis, procedure, and labs to FHIR

{% include map-mimic-hosp-other.md %}

### mimic-icu to FHIR

{% include map-mimic-icu.md %}