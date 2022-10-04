The applications for MIMIC-IV-on-FHIR data will continue to grow. The potential applications are listed  below:

### Potential Applications
#### General Application
Test data is always needed in early stage development of healthcare tools. The depth of the MIMIC-IV-on-FHIR data can help test the robustness of applications.

#### Medication Applications
Extensive detail can be found on medication workflows in the MIMIC-IV-on-FHIR datastore. The MIMIC IG captured multiple medication workflows going from MedicationRequest -> MedicationDispense -> MedicationAdministration. Additional information is captured in MedicationStatements. Validating an application with the various real-world medication resources could prove invaluable.

#### Lab Applications
Lab systems could utilize the ObservationLabevents and the microbiology observations found in the MIMIC-IV-on-FHIR datastore. Few datastores include detailed microbiology data so the datastore would be useful to test new lab applications.

#### Cohort Generation
There are FHIR tools to generate research cohorts and analyze them. The MIMIC-IV-on-FHIR data could be used to validate cohort criteria and generate test cohorts.
