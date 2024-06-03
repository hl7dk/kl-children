Instance: klgateway-children-adbb
InstanceOf: KLGatewayChildrenQuestionnaire
Usage: #definition
Title: "KLGatewayChildrenADBB"
* status = #active
* publisher = "Kommunernes Landsforening"
* description = "Alarm Distress Baby Scale (ADBB)"
* name = "KLGatewayChildrenADBB"
* copyright = "Users may only use ADBB if they first complete appropriate training as offered by University of Copenhagen https://psy.ku.dk/cif/kurser-og-efteruddannelse/. The copyright should be respected. ADBB was first described in: Guedeney, A. and Fermanian, J., 2001. A validity and reliability study of assessment and screening for sustained withdrawal reaction in infancy: The Alarm Distress Baby Scale. Infant Mental Health Journal: Official Publication of The World Association for Infant Mental Health, 22(5), pp.559-575."
* item[0].type = #integer
* item[0].text = "1. Ansigtsudtryk"
* item[0].linkId = "1facialExpression"
* item[0].extension[minValue].valueInteger = 0
* item[0].extension[maxValue].valueInteger = 4
* item[0].repeats = false

* item[+].type = #integer
* item[=].text = "2. Øjenkontakt"
* item[=].linkId = "2eyeContact"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 4
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "3. Generelt aktivitetsniveau"
* item[=].linkId = "3generalLevelOfActivity"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 4
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "4. Selvstimulation"
* item[=].linkId = "4selfStimulatingGestures"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 4
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "5. Vokalisering"
* item[=].linkId = "5vocalizations"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 4
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "6. Hastighed af respons på stimulation"
* item[=].linkId = "6brisknessOfResponseToStimulation"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 4
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "7. Relation"
* item[=].linkId = "7relationship"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 4
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "8. Attraktion"
* item[=].linkId = "8attraction"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 4
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "Samlet score"
* item[=].linkId = "score"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 32
* item[=].repeats = false

Instance: ADBBAnswerRikke
InstanceOf: KLGatewayChildrenQuestionnaireResponse
Usage: #example
Title: "ADBBAnswerRikke"
Description: "Udfyldt ADBB skema for Rikke"
* questionnaire = "http://fhir.kl.dk/children/Questionnaire/klgateway-children-adbb"
* status = #completed
* subject = Reference(Rikke)
* extension[findingInformer].valueCodeableConcept = $KLCommonCodes#8fe80acb-2c2a-4f10-b2b8-ddb77d2f69dc "Medarbejder alene"
* authored = 2021-07-04

* item[0].linkId = "1facialExpression"
* item[=].answer.valueInteger = 0

* item[+].linkId = "2eyeContact"
* item[=].answer.valueInteger = 1

* item[+].linkId = "3generalLevelOfActivity"
* item[=].answer.valueInteger = 0

* item[+].linkId = "4selfStimulatingGestures"
* item[=].answer.valueInteger = 0

* item[+].linkId = "5vocalizations"
* item[=].answer.valueInteger = 0

* item[+].linkId = "6brisknessOfResponseToStimulation"
* item[=].answer.valueInteger = 1

* item[+].linkId = "7relationship"
* item[=].answer.valueInteger = 0

* item[+].linkId = "8attraction"
* item[=].answer.valueInteger = 1

* item[+].linkId = "score"
* item[=].answer.valueInteger = 3