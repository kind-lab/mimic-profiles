|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes|
|---|---|---|---|---|
|inputevents|stay_id, orderid, itemid|MedicationAdministration.id|[MimicMedicationAdministrationICU]|Id is concatenation of mimic data elements and converted to UUID5|
|inputevents|subject_id|MedicationAdministration.subject|[MimicMedicationAdministrationICU]|convert to UUID5|
|inputevents|stay_id|MedicationAdministration.context|[MimicMedicationAdministrationICU]|convert to UUID5|
|inputevents|starttime|MedicationAdministration.effectivePeriod.start|[MimicMedicationAdministrationICU]||
|inputevents|rate|MedicationAdministration.effectiveDateTime|[MimicMedicationAdministrationICU]||
|inputevents|endtime|MedicationAdministration.effectivePeriod.end|[MimicMedicationAdministrationICU]|only set period if inputevents.rate is null|
|inputevents|ordercategorydescription|MedicationAdministration.dosage.method|[MimicMedicationAdministrationICU]||
|inputevents|amount|MedicationAdministration.dosage.dose.value|[MimicMedicationAdministrationICU]||
|inputevents|amountuom|MedicationAdministration.dosage.dose.unit|[MimicMedicationAdministrationICU]|used for dose.unit and dose.code|
|inputevents|rate|MedicationAdministration.dosage.rateQuantity.value|[MimicMedicationAdministrationICU]||
|inputevents|rateuom|MedicationAdministration.dosage.rateQuantity.unit|[MimicMedicationAdministrationICU]|ised for rateQuantity unit and code|
|d_items|itemid|MedicationAdministration.medicationCodeableConcept.coding.code|[MimicMedicationAdministrationICU]||
|d_items|label|MedicationAdministration.medicationCodeableConcept.coding.display|[MimicMedicationAdministrationICU]||


{: .grid #grid}

* MedicationAdministration.status is fixed to 'completed'

{% include link-list.md %}
