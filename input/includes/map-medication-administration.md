|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes|
|---|---|---|---|---|
|emar_detail|emar_id, parent_field_ordinal|MedicationAdministration.id|MIMIC_Medication_Administration|Id is concatenation of mimic data elements and converted to UUID5|
|emar_detail|emar_id, parent_field_ordinal|MedicationAdministration.identifier.value|MIMIC_Medication_Administration|Identifier is concatenation of mimic data elements|
|

{: .grid #grid}

* Condition.category set to fixed value of 'encounter-diagnosis' 
