### Scope and usage
KLGatewayChildrenPUF is used to define the Copenhagen Infant Mental Health Screening/Psykisk Udvikling OG Funktion (PUF). The link-ids from this questionnaire have to be referred in the QuestionnaireResponse, that holds the answers to an PUF questionnaire.

Note that this Questionnaire defines datatype (boolean and integer) This is done for each item in the Questionnaire. However, the FHIR-validator is not able to validate a QuestionnaireResponse using these rules (Because there is a very loose coupling between Questionnaire and QuestionnaireResponse in FHIR). We encourage vendors to ensure that responses are validated according to the rules described here.

### Copyright
Copyright and licenses obtained by Local Government Denmark(Kommunernes Landsforening) to include this questionnaire in this standard, does not mean that clincal systems and users that report to KLGateway using this standard automatically have permission. It is the sole responsibility of users to handle their own permissions.

Users may only use PUF if they first complete appropriate training as offered by University of Southern Denmark https://www.sdu.dk/da/sif/forskning/projekter/puf-programmet. The copyright should be respected. PUF was first described in: Ammitzbøll, J., Holstein, B. E., Wilms, L., Andersen, A., & Skovgaard, A. M. (2016). A new measure for infant mental health screening: development and initial validation. BMC pediatrics, 16, 1-10.