### Scope and usage
This QuestionnaireResponse is used to report all answers to questionnaires to KLGateway.

The QuestionnaireResponse refers the Questionnaire in QuestionnaireResponse.questionnaire using a canonical reference, which means that the Questionnaire itself does not have to be reported to KLGateway.

QuestionnaireResponse.subject is the citizen, who the Questionnaire is about.

This profile includes the extension findingInformer QuestionnaireResponse.extension:FindingInformer. It is an optional attribute, which may be used to describe who is answering the Questionnaire.

QuestionnaireResponse.authored holds the time that the questionnaire is answered.

Each item refers the appropriate linkId from the Questionnaire-definition in QuestionnaireResponse.item.linkId.

Answers can be given in QuestionnaireResponse.item.answer.value[x] using integer, boolean or string. These should follow the rules of the Questionnaire-definition. Note that strings are also limited a minimum of 1 character, and maximum of 30 characters.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|SpørgeskemaSvarSpørgeskemaDefinition|Reference til definitionen på det spørgeskema der besvares.|QuestionnaireResponse.questionnaire|
|SpørgeskemaSvarSubjekt|Den borger, som spørgeskemasvaret omhandler|QuestionnaireResponse.subject|
|SpørgeskemaSvarKilde|Klasse der udtrykker kilden til spørgeskemasvaret dvs. den der reelt har besvaret spørgsmålene.|QuestionnaireResponse.extension:FindingInformer|
|SpørgeskemaSvarTid|Tidspunkt for spørgeskemabesvarelsen|QuestionnaireResponse.authored|
|SpørgeskemaSvarPunktId|Id for det enkelte punkt/spørgsmål i spørgeskemaet|QuestionnaireResponse.item.linkId|
|SpørgeskemaSvarPunktSvar|Svaret på det enkelte punkt/svar i spørgeskemaet|QuestionnaireResponse.item.answer.value[x]|