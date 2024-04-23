Instance: klgateway-children-epds
InstanceOf: KLGatewayChildrenQuestionnaire
Usage: #definition
Title: "KLGatewayChildrenEPDS"
* status = #active
* publisher = "Kommunernes Landsforening"
* description = "Edinburgh postnatale depressionscore (EPDS)"
* name = "KLGatewayChildrenEPDS"
* code = $SCT#450320001 //|Edinburgh postnatal depression scale score|
* copyright = "Users may reproduce this scale without further permission providing they respect the copyright. Copyright remains with the British Journal of Psychiatry. EPDS was first described by: Cox, J.L., Holden, J.M. and Sagovsky, R. (1987). Detection of postnatal depression: Development of the 10-item Edinburgh Postnatal Depression Scale. British Journal of Psychiatry, 150, 782-786."
* item[0].type = #integer
* item[0].text = "1. Har du de sidste 7 dage været i stand til at le og se tingene fra den humoristiske side?"
* item[0].linkId = "1humor"
* item[0].extension[minValue].valueInteger = 0
* item[0].extension[maxValue].valueInteger = 3
* item[0].repeats = false

* item[+].type = #integer
* item[=].text = "2. Har du de sidste 7 dage kunnet se frem til ting med glæde?"
* item[=].linkId = "2happiness"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 3
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "3. Har du de sidste 7 dage unødvendigt bebrejdet dig selv, når ting ikke gik som de skulle?"
* item[=].linkId = "3blame"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 3
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "4. Har du de sidste 7 dage været  anspændt og bekymret uden nogen særlig grund?"
* item[=].linkId = "4worry"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 3
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "5. Har du de sidste 7 dage følt dig angst eller panikslagen uden nogen særlig grund?"
* item[=].linkId = "5anxious"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 3
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "6. Har du de sidste 7 dage følt, at tingene voksede dig over hovedet?"
* item[=].linkId = "6grow"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 3
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "7. Har du de sidste 7 dage været så ked af det, at du har haft svært ved at sove?"
* item[=].linkId = "7sleep"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 3
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "8. Har du de sidste 7 dage følt dig trist eller elendigt til mode?"
* item[=].linkId = "8sad"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 3
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "9. Har du de sidste 7 dage været så ulykkelig, at du har grædt?"
* item[=].linkId = "9cry"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 3
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "10. Har tanken om at gøre skade på dig selv strejfet dig de sidste 7 dage?"
* item[=].linkId = "10harm"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 3
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "Samlet score"
* item[=].linkId = "score"
* item[=].extension[minValue].valueInteger = 0
* item[=].extension[maxValue].valueInteger = 30
* item[=].repeats = false

Instance: EPDSAnswerKirsten
InstanceOf: KLGatewayChildrenQuestionnaireResponse
Usage: #example
Title: "EPDSAnswerKirsten"
Description: "EPDS besvarelse mor, Kirsten"
* questionnaire = "http://fhir.kl.dk/children/Questionnaire/klgateway-children-epds"
* status = #completed
* subject = Reference(Kirsten)
* extension[findingInformer].valueCodeableConcept = Tempcodes#a3d30bf2-4a3c-4c49-9001-5363ae11681c "Borger"
* authored = 2020-07-04

* item[0].linkId = "1humor"
* item[=].answer.valueInteger = 0

* item[+].linkId = "2happiness"
* item[=].answer.valueInteger = 2

* item[+].linkId = "3blame"
* item[=].answer.valueInteger = 1

* item[+].linkId = "4worry"
* item[=].answer.valueInteger = 0

* item[+].linkId = "5anxious"
* item[=].answer.valueInteger = 0

* item[+].linkId = "6grow"
* item[=].answer.valueInteger = 1

* item[+].linkId = "7sleep"
* item[=].answer.valueInteger = 3

* item[+].linkId = "8sad"
* item[=].answer.valueInteger = 0

* item[+].linkId = "9cry"
* item[=].answer.valueInteger = 0

* item[+].linkId = "10harm"
* item[=].answer.valueInteger = 0

* item[+].linkId = "score"
* item[=].answer.valueInteger = 7