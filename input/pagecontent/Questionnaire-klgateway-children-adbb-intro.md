### Scope and usage
KLGatewayChildrenADBB is used to define the Alarm Distress BaBy Scale (ADBB). The link-ids from this questionnaire have to be referred in the QuestionnaireResponse, that holds the answers to an ADBB questionnaire.

Note that this Questionnaire defines datatype (integer) and minimum and maximum value for these integers. This is done for each item in the Questionnaire. However, the FHIR-validator is not able to validate a QuestionnaireResponse using these rules (because there is a loose coupling between Questionnaire and QuestionnaireResponse in FHIR). We encourage vendors to ensure that responses are validated according to the rules described here.

### Copyright
Permissions obtained by Local Government Denmark(Kommunernes Landsforening) to include this questionnaire in this standard, does not mean that clinical systems and users that report to KLGateway using this standard automatically have permission. It is the sole responsibility of users to handle their own permissions.

Users may only use ADBB if they first complete appropriate training as offered by University of Copenhagen https://psy.ku.dk/cif/kurser-og-efteruddannelse/. The copyright should be respected. ADBB was first described in: Guedeney, A. and Fermanian, J., 2001. A validity and reliability study of assessment and screening for sustained withdrawal reaction in infancy: The Alarm Distress Baby Scale. Infant Mental Health Journal: Official Publication of The World Association for Infant Mental Health, 22(5), pp.559-575.

