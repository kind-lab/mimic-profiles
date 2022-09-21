### MIMIC-ED to FHIR Mappings
The MIMIC-ED database was converted into FHIR. The tables from MIMIC-ED were each mapped to a one or more resources. The diagram below depicts these mappings:


{% include img.html img="mimic-ed-fhir-mappings.png" caption="Overall mappings MIMIC-ED to FHIR" %}

Custom profiles were created to house the tables coming into FHIR. This was necessary to handle the unique terminology coming from MIMIC-ED. In the following sections you will see tables detailing the mapping from each MIMIC-ED table to these MIMIC-FHIR profiles.

### Condition
{% include map-condition-ed.md %}

### Encounter
{% include map-encounter-ed.md %}

### MedicationDispense ED
{% include map-medicationdispense-ed.md %}

### MedicationStatement ED
{% include map-medicationstatement-ed.md %}

### Observation ED
{% include map-observation-ed.md %}

### Observation Vital Signs
{% include map-observationvitalsigns-ed.md %}

### Patient
See MIMIC patient. MIMIC-ED only captures subject_id and gender. 

### Procedure ED
{% include map-procedure-ed.md %}