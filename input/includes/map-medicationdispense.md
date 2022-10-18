|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|pharmacy|pharmacy_id|MedicationDispense.id|[MimicMedicationDispense]|convert to UUID5|
|pharmacy|pharmacy_id|MedicationDispense.identifier|[MimicMedicationDispense]||
|pharmacy|medication|MedicationDispense.medicationCodeableConcept|[MimicMedicationDispense]||
|pharmacy|subject|MedicationDispense.subject_id|[MimicMedicationDispense]|convert to UUID5|
|pharmacy|hadm_id|MedicationDispense.context|[MimicMedicationDispense]|convert to UUID5|
|pharmacy|pharmacy_id|MedicationDispense.authorizingPrescription|[MimicMedicationDispense]|convert to UUID5|
|pharmacy|fill_quantity|MedicationDispense.quantity|[MimicMedicationDispense]||
|pharmacy|route|MedicationDispense.dosageInstruction.route|[MimicMedicationDispense]||
|pharmacy|frequency|MedicationDispense.dosageInstruction.timing.code|[MimicMedicationDispense]||
|pharmacy|duration|MedicationDispense.dosageInstruction.timing.duration|[MimicMedicationDispense]||
|pharmacy|one_hr_max|MedicationDispense.dosageInstruction.maxDosePerPeriod|[MimicMedicationDispense]||

{: .grid #grid}

* MedicationDispense.status is fixed to 'completed'

{% include link-list.md %}
