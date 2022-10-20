One MedicationDispense resource per dispense in the pyxis table (ED medication dispensation). A dispense can consist of multiple rows with the same subject_id, stay_id, and charttime but multiple medication codes. 

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|pyxis|stay_id, med_rn, gsn_rn|MedicationDispense.id|[MimicMedicationDispenseED]|Concat MIMIC columns and convert to UUID5|
|pyxis|subject_id|MedicationDispense.subject|[MimicMedicationDispenseED]|Convert to UUID5|
|pyxis|stay_id|MedicationDispense.context|[MimicMedicationDispenseED]|Convert to UUID5|
|pyxis|gsn|MedicationDispense.medicationCodeableConcept.coding|[MimicMedicationDispenseED]|MIMIC code system|
|pyxis|name|MedicationDispense.medicationCodeableConcept.text|[MimicMedicationDispenseED]||
|pyxis|charttime|MedicationDispense.whenHandedOver|[MimicMedicationDispenseED]||
{: .grid #grid}

* MedicationDispense.status is fixed to 'unknown' (Unknown)

{% include link-list.md %}
