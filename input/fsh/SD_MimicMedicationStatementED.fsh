Profile:        MimicMedicationStatementED
Parent:         MedicationStatement
Id:             mimic-medication-statement-ed
Title:          "MIMIC-ED MedicationStatement"
Description:    "A MedicationStatement resource that represents each record in the medrecon table of MIMIC-ED."

// cardinalities of updated elements
* medicationCodeableConcept.text 1..1 // medrecon: name
* context 1..1 // Reference(Encounter)
* dateAsserted 1..1 // medrecon: charttime

// cardinalities of used elements
* medicationCodeableConcept.coding 0..*
* status 1..1 // Unknown
* medication[x] 1..1
* subject 1..1 // Reference(Patient)


// Further specification of elements
* status = $MedicationStatementStatus#unknown "Unknown"
* medication[x] only CodeableConcept
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)

// Slicing logic of medication[x] coding (multiple codes: gsn, ndc, etccode)
* medicationCodeableConcept.coding ^slicing.discriminator.type = #pattern
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding ^slicing.description = "Slice based on the medicationCodeableConcept.coding pattern"

// Define slices
* medicationCodeableConcept.coding contains
       gsnCode 0..1 and
       ndcCode 0..1 and
       etccodeCode 0..
* medicationCodeableConcept.coding[gsnCode].system = $GSN_CS // No defined code system.. 
* medicationCodeableConcept.coding[ndcCode].system = $NDC
* medicationCodeableConcept.coding[etccodeCode].system = $ETC // URL correct but no defined code system..
