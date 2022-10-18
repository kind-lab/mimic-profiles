|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|prescriptions|pharmacy_id|MedicationRequest.id|[MimicMedicationRequest]|convert to UUID5|
|prescriptions|pharmacy_id|MedicationRequest.identifier|[MimicMedicationRequest]||
|prescriptions|subject_id|MedicationRequest.subject|[MimicMedicationRequest]|convert to UUID5|
|prescriptions|hadm_id|MedicationRequest.encounter|[MimicMedicationRequest]|convert to UUID5|
|prescriptions|drug_code|MedicationRequest.medicationReference|[MimicMedicationRequest]|convert to UUID5|
|prescriptions|status|MedicationRequest.status|[MimicMedicationRequest]||
|prescriptions|entertime|MedicationRequest.authoredOn|[MimicMedicationRequest]||
|prescriptions|prod_strength|MedicationRequest.dosageInstruction.text|[MimicMedicationRequest]||
|prescriptions|route|MedicationRequest.dosageInstruction.route|[MimicMedicationRequest]||
|prescriptions|dose_val_rx|MedicationRequest.dosageInstruction.doseAndRate.doseQuantity.value|[MimicMedicationRequest]||
|prescriptions|dose_unit_rx|MedicationRequest.dosageInstruction.doseAndRate.doseQuantity.unit|[MimicMedicationRequest]||
|prescriptions|frequency|MedicationRequest.dosageInstruction.timing.code|[MimicMedicationRequest]||
|prescriptions|duration|MedicationRequest.dosageInstruction.timing.repeat.duration|[MimicMedicationRequest]||
|prescriptions|one_hr_max|MedicationRequest.dosageInstruction.maxDosePerPeriod|[MimicMedicationRequest]||
|prescriptions|starttime|MedicationRequest.dispenseRequest.validityPeriod.start|[MimicMedicationRequest]||
|prescriptions|stoptime|MedicationRequest.dispenseRequest.validityPeriod.end|[MimicMedicationRequest]||


{: .grid #grid}

* MedicationRequest.intent is fixed to 'order'

{% include link-list.md %}
