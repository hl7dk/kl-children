### Scope and usage
KLGatewayChildrenEPDS is used to define the Edinburgh postnatal depression scale (EPDS). The link-ids from this questionnaire have to be referred in the QuestionnaireResponse, that holds the answers to an EPDS questionnaire.

Note that this Questionnaire defines datatype (Integer) and minimum and maximum value for these integers. This is done for each item in the Questionnaire. However, the FHIR-validator is not able to validate a QuestionnaireResponse using these rules (because there is a loose coupling between Questionnaire and QuestionnaireResponse in FHIR). We encourage vendors to ensure that responses are validated according to the rules described here.

### Copyright
Permissions obtained obtained by Local Government Denmark(Kommunernes landsforening) to include this questionnaire in this standard, does not mean that clinical systems and users that report to KLGateway using this standard automatically have permission. It is the sole responsibility of users to handle their own permissions.

Users may reproduce this scale without further permission providing they respect the copyright. Copyright remains with the British Journal of Psychiatry. EPDS was first described by: Cox, J.L., Holden, J.M. and Sagovsky, R. (1987). Detection of postnatal depression: Development of the 10-item Edinburgh Postnatal Depression Scale. British Journal of Psychiatry, 150, 782-786.

Read the precise copyright notice here: https://med.stanford.edu/content/dam/sm/ppc/documents/DBP/EDPS_text_added.pdf