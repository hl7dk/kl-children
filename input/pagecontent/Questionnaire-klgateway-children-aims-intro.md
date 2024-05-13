### Scope and usage
KLGatewayChildrenADBB is used to define the Alberta Infant Motor Scale (AIMS). The link-ids from this questionnaire have to be referred in the QuestionnaireResponse, that holds the answers to an ADBB questionnaire.

Note that this Questionnaire defines datatype (integer) and minimum and maximum value for these integers. This is done for each item in the Questionnaire. However, the FHIR-validator is not able to validate a QuestionnaireResponse using these rules (because there is a loose coupling between Questionnaire and QuestionnaireResponse in FHIR). We encourage vendors to ensure that responses are validated according to the rules described here.

### Copyright
Copyright and licenses obtained by Local Government Denmark(Kommunernes Landsforening) to include this questionnaire in this standard, does not mean that clinical systems and users that report to KLGateway using this standard automatically have permission. It is the sole responsibility of users to handle their own permissions.

Users may only use AIMS if they respect the copyright and other intellectual property rights, which are held by Elsevier. AIMS was first described in: Piper, Martha C., et al. Construction and validation of the Alberta Infant Motor Scale (AIMS). Canadian journal of public health= Revue canadienne de sante publique 83 (1992): S46-50. Its current use is described in: Piper, Martha, and Johanna Darrah. Motor Assessment of the Developing Infant-E-Book. Elsevier Health Sciences, 2021.