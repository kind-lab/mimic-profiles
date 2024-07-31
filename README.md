# mimic-profiles
FHIR profiles for MIMIC-IV. The MIMIC-IV and MIMIC-IV-ED databases have been modelled as FHIR resources. The process to generate the full implementation guide with resources is:

1. Set up FSH and SUSHI - [SUSHI Setup Guide](https://fshschool.org/docs/sushi/installation/)
- Install Node.js (needed for SUSHI): https://nodejs.org/en/
  - Check node.js is properly set up: `node --version` or `npm --version`
- Install SUSHI: `npm install -g fsh-sushi`

2. Generate FHIR resources from FSH
- In the main directory of the repo run `sushi .`
- This command will generate the FHIR resources from the FSH files


3. Set up the IG Publisher
- [Install Jekyll](https://jekyllrb.com/docs/installation/) (need for the IG html output)
- Run `./_updatePublisher.sh` from the top of the repository to get the latest IG Publisher
  - If _updatePublisher.sh does not work you can manually download the [IG publisher](https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar.)


4. Generate the mimic-fhir implementation guide 
- Run `./_genonce.sh`from the top of the repository to generate the mimic-fhir IG
