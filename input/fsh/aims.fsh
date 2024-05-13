Instance: klgateway-children-aims
InstanceOf: KLGatewayChildrenQuestionnaire
Usage: #definition
Title: "KLGatewayChildrenAIMS"
* status = #active
* publisher = "Kommunernes Landsforening"
* description = "Alberta Infant Motor Scale (AIMS)"
* name = "KLGatewayChildrenAIMS"
* copyright = "Users may only use AIMS if they respect the copyright and other intelectual property rights, which are held by Elsevier. AIMS was first described in: Piper, Martha C., et al. Construction and validation of the Alberta Infant Motor Scale (AIMS). Canadian journal of public health= Revue canadienne de sante publique 83 (1992): S46-50. Its currect use is described in: Piper, Martha, and Johanna Darrah. Motor Assessment of the Developing Infant-E-Book. Elsevier Health Sciences, 2021."
* item[0].type = #integer
* item[0].text = "Maveliggende (Prone Subscale Score)"
* item[0].linkId = "prone"
* item[0].extension[minValue].valueInteger = 0
* item[0].extension[maxValue].valueInteger = 21
* item[0].repeats = false

* item[+].type = #integer
* item[=].text = "Rygliggende (Surpine Subscale Score)"
* item[=].linkId = "surpine"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 9
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "Siddende (Sit Subscale Score)"
* item[=].linkId = "sit"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 12
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "Stående (Stand Subscale Score)"
* item[=].linkId = "stand"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 16
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "Samlet (Total Score)"
* item[=].linkId = "score"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 58
* item[=].repeats = false

Instance: AIMSAnswerRikke
InstanceOf: KLGatewayChildrenQuestionnaireResponse
Usage: #example
Title: "AIMSAnswerRikke"
Description: "Udfyldt AIMS skema for Rikke"
* questionnaire = "http://fhir.kl.dk/children/Questionnaire/klgateway-children-aims"
* status = #completed
* subject = Reference(Rikke)
* extension[findingInformer].valueCodeableConcept = Tempcodes#111b2c8a-389d-4ecc-9187-ce78f019649b "Medarbejder alene"
* authored = 2021-07-04

* item[0].linkId = "prone"
* item[=].answer.valueInteger = 7

* item[+].linkId = "surpine"
* item[=].answer.valueInteger = 3

* item[+].linkId = "sit"
* item[=].answer.valueInteger = 0

* item[+].linkId = "stand"
* item[=].answer.valueInteger = 0

* item[+].linkId = "score"
* item[=].answer.valueInteger = 10