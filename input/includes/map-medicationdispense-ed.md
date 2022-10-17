One MedicationDispense resource per dispense in the pyxis table (ED medication dispensation). A dispense can consist of multiple rows with the same subject_id, stay_id, and charttime but multiple medication codes. 

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|pyxis|gsn|MedicationDispense.medicationCodeableConcept.coding|[MimicMedicationDispenseED]|MIMIC code system|
|pyxis|name|MedicationDispense.medicationCodeableConcept.text|[MimicMedicationDispenseED]||
|pyxis|subject_id|MedicationDispense.subject|[MimicMedicationDispenseED]|Links to a MimicPatient with corresponding identifier|
|pyxis|stay_id|MedicationDispense.context|[MimicMedicationDispenseED]|Links to a MimicEncounter with corresponding identifier|
|pyxis|charttime|MedicationDispense.whenHandedOver|[MimicMedicationDispenseED]||
{: .grid #grid}

* MedicationDispense.status is fixed to 'unknown' (Unknown)

{% include link-list.md %}