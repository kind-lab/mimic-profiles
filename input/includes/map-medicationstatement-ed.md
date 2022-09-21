One MedicationStatement resource per medication that was taken by a patient. A drug can have multiple etccode values (one per row, multiple rows) and are delineated by etc_rn. 

|MIMIC-ED Table|MIMIC-ED Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|medrecon|gsn|MedicationStatement.medicationCodeableConcept.coding:gsnCode|MimicMedicationStatementED|MIMIC code system. This is a sliced element, gsn codes are captured in the gsnCode slice.|
|medrecon|ndc|MedicationStatement.medicationCodeableConcept.coding:ndcCode|MimicMedicationStatementED|This is a sliced element, ndc codes are captured in the ndcCode slice.|
|medrecon|etccode|MedicationStatement.medicationCodeableConcept.coding:etccodeCode|MimicMedicationStatementED|MIMIC code system. This is a sliced element, etc codes are captured in the etccodeCode slice.|
|medrecon|name|MedicationStatement.medicationCodeableConcept.text|MimicMedicationStatementED||
|medrecon|subject_id|MedicationStatement.subject|MimicMedicationStatementED|Links to a MimicPatient with corresponding identifier|
|medrecon|stay_id|MedicationStatement.context|MimicMedicationStatementED|Links to a MimicEncounter with corresponding identifier|
{: .grid #grid}

* MedicationStatement.status is fixed to 'unknown' (Unknown)
* MedicationStatement.medicationCodeableConcept.coding:etccodeCode has cardinality 0..*; allows multiple etc codes to be stored. 