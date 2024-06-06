### Scope and usage
KLGatewayChildrenTOPI is used to define an early intervention tool, first developed by Socailstyrelsen. Its result is a 'green', 'yellow', 'red' score, which can be reported using this questionnaire. 

Note that this Questionnaire defines question type as 'choice' and datatype (string) This is done for each item in the Questionnaire. However, the FHIR-validator is not able to validate a QuestionnaireResponse using these rules (Because there is a loose coupling between Questionnaire and QuestionnaireResponse in FHIR). We encourage vendors to ensure that responses are validated according to the rules described here. In other words, only the exact strings provided in Questionnaire.item.answerOption.valueString should be accepted in the QuestionnaireResponse.

### Copyright
Please note that the copyright to this tool is held by Socialstyrelsen: https://www.sbst.dk/media/12903/guide-til-tidlig-opsporing-af-b%C3%B8rn-i-en-udsat-position.pdf".