Profile: KLGatewayChildrenQuestionnaireResponse
Id: klgateway-children-questionaire-response
Parent: QuestionnaireResponse
Title: "KLGatewayChildrenQuestionnaireResponse"
Description: "Questionnaire response profile, for all questionaires in kl-children"
* extension contains 
    FindingInformer named findingInformer 0..1 SU // and  Technique named techniqe 0..1 SU

* questionnaire 1..1
* item 0..30
* item.answer 1..1
* item.answer..value[x] 1..1
* item.answer.value[x] only integer or boolean
* subject 1..1

// 0..0
* identifier 0..0
* partOf 0..0
* basedOn 0..0
* encounter 0..0
* authored 0..0
* author 0..0
* source 0..0
* item.definition 0..0
* item.text 0..0
* item.item 0..0