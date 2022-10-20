|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes|
|---|---|---|---|---|
|emar|subject_id|MedicationAdministration.subject|[MimicMedicationAdministration]|convert to UUID5|
|emar|hadm_id|MedicationAdministration.context|[MimicMedicationAdministration]|convert to UUID5|
|emar|charttime|MedicationAdminstration.effectiveDateTime|[MimicMedicationAdministration]
|emar_detail|emar_id, parent_field_ordinal|MedicationAdministration.id|[MimicMedicationAdministration]|Id is concatenation of mimic data elements and converted to UUID5|
|emar_detail|pharmacy_id|MedicationAdministration.request|[MimicMedicationAdministration]||
|emar_detail|dose_given, dose_given_unit|MedicationAdministration.dosage.text|[MedicationAdministration]|concat the text and units|
|emar_detail|site|MedicationAdministration.site|[MedicationAdministration]||
|emar_detail|route|MedicationAdministration.route|[MedicationAdministration]||
|emar_detail|event_txt|MedicationAdministration.route|[MedicationAdministration]||
|emar_detail|infusion_rate|MedicationAdministration.rateQuantity.value|[MedicationAdministration]||
|emar_detail|infusion_rate_unit|MedicationAdministration.rateQuantity.unit|[MedicationAdministration]|also set for code element|
|emar_detail|product_code|MedicationAdministration.medicationCodeableConcept|[MimicMedicationAdministration]|product code used if present|
|emar|medication|MedicationAdministration.medicationCodeableConcept|[MimicMedicationAdministration]|medication used if product code not present|
|poe|order_type|MedicationAdministration.medicationCodeableConcept|[MimicMedicationAdministration]|Used for IV and TPN medication|
{: .grid #grid}

* MedicationAdministration.status is fixed to 'completed'
* MedicationAdministration.medicationCodeableConcept set to 'UNK' if product_code, medication, and poe.order_type are all NULL

{% include link-list.md %}
