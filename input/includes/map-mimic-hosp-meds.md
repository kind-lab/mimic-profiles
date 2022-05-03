|MIMIC Element         |FHIR Element                                                                                                                   |FHIR Profile                                           |Notes                                                                                                              |
|----------------------|-------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
|**Table: pharmacy**       |                                                                                                                               |                                                       |                                                                                                                   |
|subject\_id           |MedicationDispense.subject                                                                                                     |MIMIC\_Medication\_Dispense                            |made into UUID                                                                                                     |
|hadm\_id              |MedicationDispense.encounter                                                                                                   |MIMIC\_Medication\_Dispense                            |made into UUID                                                                                                     |
|pharmacy\_id          |MedicationDispense.identifier                                                                                                  |MIMIC\_Medication\_Dispense                            |                                                                                                                   |
|starttime             |MedicationRequest.dispenseRequest.validityPeriod.start                                                                         |MIMIC\_Medication\_Request                             |                                                                                                                   |
|stoptime              |MedicationRequest.dispenseRequest.validityPeriod.end                                                                           |MIMIC\_Medication\_Request                             |                                                                                                                   |
|medication            |MedicationDispsense.medicationReference<br>Medication.code                                                                     |MIMIC\_Medication\_Dispense<br>MIMIC\_Medication       |Part of named medication codes                                                                                     |
|status                |MedicationRequest.status                                                                                                       |MIMIC\_Medication\_Request                             |Found in pharmacy but really about prescription status                                                             |
|entertime             |MedicationRequest.authoredOn                                                                                                   |MIMIC\_Medication\_Request                             |                                                                                                                   |
|route                 |MedicationRequest.dosageInstruction.route, MedicationDispense.dosageInstruction.route                                          |MIMIC\_Medication\_Request, MIMIC\_Medicaiton\_Dispense|                                                                                                                   |
|frequency             |MedicationRequest.dosageInstruction.timing.code, MedicationDispense.dosageInstruction.timing.code                              |MIMIC\_Medication\_Request, MIMIC\_Medicaiton\_Dispense|                                                                                                                   |
|one\_hr\_max          |MedicationRequest.dosageInstruction.timing.maxDosePerPeriod, MedicationDispense.dosageInstruction.timing.maxDosePerPeriod      |MIMIC\_Medication\_Request, MIMIC\_Medicaiton\_Dispense|                                                                                                                   |
|doses\_per\_24\_hrs   |MedicationRequest.dosageInstruction.doseAndRate.rateQuantity, MedicationDispense.dosageInstruction.doseAndRate.rateQuantity    |MIMIC\_Medication\_Request, MIMIC\_Medicaiton\_Dispense|                                                                                                                   |
|duration              |MedicationRequest.dosageInstruction.timing.repeat.duration, MedicationDispense.dosageInstruction.timing.repeat.duration        |MIMIC\_Medication\_Request, MIMIC\_Medicaiton\_Dispense|                                                                                                                   |
|duration\_interval    |MedicationRequest.dosageInstruction.timing.repeat.durationUnit, MedicationDispense.dosageInstruction.timing.repeat.durationUnit|MIMIC\_Medication\_Request, MIMIC\_Medicaiton\_Dispense|                                                                                                                   |
|fill\_quantity        |MedicationDispense.quantity                                                                                                    |MIMIC\_Medication\_Dispense                            |                                                                                                                   |
|**Table: prescriptions** |                                                                                                                               |                                                       |                                                                                                                   |
|subject\_id           |MedicationRequest.subject                                                                                                      |MIMIC\_Medication\_Request                             |                                                                                                                   |
|hadm\_id              |MedicationRequest.encounter                                                                                                    |MIMIC\_Medication\_Request                             |                                                                                                                   |
|pharmacy\_id          |MedicationRequest.identifier                                                                                                   |MIMIC\_Medication\_Request                             |                                                                                                                   |
|starttime             |MedicationRequest.dispenseRequest.validityPeriod.start                                                                         |MIMIC\_Medication\_Request                             |                                                                                                                   |
|stoptime              |MedicationRequest.dispenseRequest.validityPeriod.end                                                                           |MIMIC\_Medication\_Request                             |                                                                                                                   |
|drug\_type            |                                                                                                                               |                                                       |used when grouping prescription meds                                                                               |
|drug                  |MedicationRequest.medicationReference<br>Medication.code                                                                       |MIMIC\_Medication\_Request<br>MIMIC\_Medication        |Used along with gsn, ndc and formulary\_drug\_cd to make unique medication                                         |
|gsn                   |MedicationRequest.medicationReference<br>Medication.code                                                                       |MIMIC\_Medication\_Request<br>MIMIC\_Medication        |                                                                                                                   |
|ndc                   |MedicationRequest.medicationReference<br>Medication.code                                                                       |MIMIC\_Medication\_Request<br>MIMIC\_Medication        |                                                                                                                   |
|formulary\_drug\_cd   |MedicationRequest.medicationReference<br>Medication.code                                                                       |MIMIC\_Medication\_Request<br>MIMIC\_Medication        |Part of formulary\_drug\_cd's with emar\_detail.product\_code                                                      |
|prod\_strength        |MedicationRequest.dosageInstruction.text                                                                                       |MIMIC\_Medication\_Request                             |                                                                                                                   |
|dose\_val\_rx         |MedicationRequest.dosageInstructions.doseAndRate.doseQuantity.value                                                            |MIMIC\_Medication\_Request                             |Non-numeric values in here, so mapping not working right now                                                       |
|dose\_unit\_rx        |MedicationRequest.dosageInstructions.doseAndRate.doseQuantity.unit                                                             |MIMIC\_Medication\_Request                             |                                                                                                                   |
|form\_val\_disp       |\-                                                                                                                             |\-                                                     |Not used currently but could store a second dosageInstructions.doseAndRate.doseQuantity.value with type='formulary'|
|form\_unit\_disp      |\-                                                                                                                             |\-                                                     |Not used currently but could store a second dosageInstructions.doseAndRate.doseQuantity.value with type='formulary'|
|doses\_per\_24\_hrs   |MedicationRequest.dosageInstructions.doseAndRate.rateQuantity                                                                  |MIMIC\_Medication\_Request                             |Set the numerator to the doses and denominator to 24 hours                                                         |
|route                 |MedicationRequest.dosageInstruction.route                                                                                      |MIMIC\_Medication\_Request                             |                                                                                                                   |
|**Table: poe**            |                                                                                                                               |                                                       |                                                                                                                   |
|poe\_id               |MedicationRequest.identifier                                                                                                   |MIMIC\_Medication\_Request                             |                                                                                                                   |
|subject\_id           |MedicationRequest.subject                                                                                                      |MIMIC\_Medication\_Request                             |                                                                                                                   |
|hadm\_id              |MedicationRequest.encounter                                                                                                    |MIMIC\_Medication\_Request                             |                                                                                                                   |
|ordertime             |MedicationRequest.authoredOn                                                                                                   |MIMIC\_Medication\_Request                             |                                                                                                                   |
|order\_type           |MedicationRequest.medicationReference<br>Medication.code                                                                       |MIMIC\_Medication\_Request<br>MIMIC\_Medication        |medication created for IV/TPN events are referenced through poe                                                    |
|order\_status         |MedicationRequest.status                                                                                                       |MIMIC\_Medication\_Request                             |                                                                                                                   |
|**Table: emar**          |                                                                                                                               |                                                       |                                                                                                                   |
|subject\_id           |MedicationAdministration.subject                                                                                               |MIMIC\_Medication\_Administration                      |                                                                                                                   |
|hadm\_id              |MedicationAdministration.context                                                                                               |MIMIC\_Medication\_Administration                      |                                                                                                                   |
|charttime             |MedicationAdministration.effectiveDateTime                                                                                     |MIMIC\_Medication\_Administration                      |                                                                                                                   |
|medication            |MedicationAdministration.medication<br>Medication.code                                                                         |MIMIC\_Medication\_Administration<br>MIMIC\_Medication |Part of the named medication                                                                                       |
|event\_txt            |MedicationAdministration.status                                                                                                |MIMIC\_Medication\_Administration                      |                                                                                                                   |
|**Table: emar\_detail**   |                                                                                                                               |                                                       |                                                                                                                   |
|emar\_id              |MedicationAdministration.identifier                                                                                            |MIMIC\_Medication\_Administration                      |Concatenated with parent\_field\_ordinal for id                                                                    |
|parent\_field\_ordinal|MedicationAdministration.identifier                                                                                            |MIMIC\_Medication\_Administration                      |Concatenated with emar\_id for id                                                                                  |
|pharmacy\_id          |MedicationAdministration.request                                                                                               |MIMIC\_Medication\_Administration                      |                                                                                                                   |
|dose\_given           |MedicationAdministration.dosage.dose.value                                                                                     |MIMIC\_Medication\_Administration                      |                                                                                                                   |
|dose\_given\_unit     |MedicationAdministration.dosage.dose.unit                                                                                      |MIMIC\_Medication\_Administration                      |                                                                                                                   |
|product\_code         |MedicationAdministration.medication<br>Medication.code                                                                         |MIMIC\_Medication\_Administration<br>MIMIC\_Medication |Part of the formulary\_drug\_cd medication                                                                         |
|infusion\_rate        |MedicationAdministration.dosage.rateQuantity.value                                                                             |MIMIC\_Medication\_Administration                      |                                                                                                                   |
|infusion\_rate\_unit  |MedicationAdministration.dosage.rateQuantity.unit                                                                              |MIMIC\_Medication\_Administration                      |                                                                                                                   |
|route                 |MedicationAdministration.dosage.route                                                                                          |MIMIC\_Medication\_Administration                      |                                                                                                                   |
|site                  |MedicationAdministration.dosage.site                                                                                           |MIMIC\_Medication\_Administration                      |                                                                                                                   |
{: .grid #grid}