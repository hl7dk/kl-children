Profile: KLGatewayChildrenQuestionnaireResponse
Id: klgateway-children-questionnaire-response
Parent: QuestionnaireResponse
Title: "KLGatewayChildrenQuestionnaireResponse"
Description: "Questionnaire response profile, for all questionaires in kl-children"
* extension contains 
    FindingInformer named findingInformer 0..1 SU // and  Technique named techniqe 0..1 SU

* questionnaire 1..1 //write invariant that ensures that only the allowed questionnaires are included
//* questionnaire only $epds
* item 0..36
* item.answer 1..1
* item.answer.value[x] 1..1
* item.answer.value[x] only integer or boolean or string
* item.answer.valueString obeys questionnaire-response-string-length  
* subject 1..1
* subject only Reference(klgateway-children-citizen) //borger
* subject ^type.aggregation = #bundled
* authored 1..1

// 0..0
* identifier 0..0
* partOf 0..0
* basedOn 0..0
* encounter 0..0
* author 0..0
* source 0..0
* item.definition 0..0
* item.text 0..0
* item.item 0..0
* item.answer.item 0..0

* extension[FindingInformer].valueCodeableConcept ^short = "[DK] SpørgeskemaSvarKilde"
* questionnaire ^short = "[DK] SpørgeskemaSvarSpørgeskemaDefinition"
* item.linkId ^short = "[DK] SpørgeskemaSvarPunktId"
* item.answer.value[x] ^short = "[DK] SpørgeskemaSvarPunktSvar"
* subject ^short = "[DK] SpørgeskemaSvarSubjekt"
* authored ^short = "[DK] SpørgeskemaSvarTid"

Invariant: questionnaire-response-string-length
Description: "Answer given as string must be a minimum of 1 character, and maximum of 30 characters long"
Severity: #error
Expression: "matches('^.{1,30}$')"

