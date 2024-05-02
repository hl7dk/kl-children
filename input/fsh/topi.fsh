Instance: klgateway-children-topi
InstanceOf: KLGatewayChildrenQuestionnaire
Usage: #definition
Title: "KLGatewayChildrenTOPI"
* status = #active
* publisher = "Kommunernes Landsforening"
* description = "Tidlig opsporing og indsats (TOPI), samlet faglig vurdering lavet af sundhedsplejersker og evt. samarbejdspartnere"
* name = "KLGatewayChildrenTOPI"
* copyright = "Socialstyrelsen: https://www.sbst.dk/media/12903/guide-til-tidlig-opsporing-af-b%C3%B8rn-i-en-udsat-position.pdf"
* item[0].type = #choice
* item[=].text = "Faglig vurdering"
* item[=].answerOption[0].valueString = "Grøn"
* item[=].answerOption[1].valueString = "Gul"
* item[=].answerOption[2].valueString = "Rød"
* item[=].linkId = "1vurdering"
* item[=].repeats = false

Instance: TOPIRikke
InstanceOf: KLGatewayChildrenQuestionnaireResponse
Usage: #example
Title: "TOPIAnswerRikke"
Description: "TOPI vurdering af Rikke lavet af sundhedsplejersker og eventuelle samarbejdspartnere."
* questionnaire = "http://fhir.kl.dk/children/Questionnaire/klgateway-children-sdq11-17"
* status = #completed
* subject = Reference(Lars)
* authored = 2020-12-23

* item[0].linkId = "1vurdering"
* item[=].answer.valueString = "Grøn"