Instance: klgateway-children-sdq11-17
InstanceOf: KLGatewayChildrenQuestionnaire
Usage: #definition
Title: "KLGatewayChildrenSDQ11-17"
* status = #active
* publisher = "Kommunernes Landsforening"
* description = "Strength and Difficulties Questionnaire (SDQ), including impact supplement for self-completion by 11-17 year olds (SDQ S11-17)"
* name = "KLGatewayChildrenSDQ11-17"
* code = $SCT#717639006 "Strengths and Difficulties Questionnaire self-rated for 11-17 year old score"
* copyright = "Please note that Strengths and Difficulties Questionnaires, whether in English or in translation, are copyright documents that are not in the public domain. As such, they may not be modified in any way (e.g. changing the wording of questions, adding questions or administering only subsets of questions). This is to ensure that the SDQ is fully comparable across studies and settings. Similarly, to ensure high quality and consistency, unauthorized translations are not permitted. Paper versions may be downloaded and subsequently photocopied without charge by individuals or non-profit organizations provided they are not making any charge to families.
Users are not permitted to create or distribute electronic versions for any purpose without prior authorization from youthinmind. If you are interested in making translations or creating electronic versions you MUST first contact support@youthinmind.com."

* item[0].type = #choice
* item[=].text = "Jeg prøver at være venlig mod andre. Jeg tænker over hvordan andre har det"
* item[=].answerOption[0].valueString = "Passer ikke"
* item[=].answerOption[1].valueString = "Passer delvist"
* item[=].answerOption[2].valueString = "Passer godt"
* item[=].linkId = "1friendly"
* item[=].repeats = false

* item[+].type = #choice
* item[=].text = "Jeg er rastløs, har svært ved at holde mig i ro i længere tid"
* item[=].answerOption[0].valueString = "Passer ikke"
* item[=].answerOption[1].valueString = "Passer delvist"
* item[=].answerOption[2].valueString = "Passer godt"
* item[=].linkId = "2restless"
* item[=].repeats = false

// * item[+].type = #choice
// * item[=].text = ""
// * item[=].answerOption[0].valueString = "Passer ikke"
// * item[=].answerOption[1].valueString = "Passer delvist"
// * item[=].answerOption[2].valueString = "Passer godt"
// * item[=].linkId = ""
// * item[=].repeats = false

// * item[+].type = #choice
// * item[=].text = ""
// * item[=].answerOption[0].valueString = "Passer ikke"
// * item[=].answerOption[1].valueString = "Passer delvist"
// * item[=].answerOption[2].valueString = "Passer godt"
// * item[=].linkId = ""
// * item[=].repeats = false

// * item[+].type = #choice
// * item[=].text = ""
// * item[=].answerOption[0].valueString = "Passer ikke"
// * item[=].answerOption[1].valueString = "Passer delvist"
// * item[=].answerOption[2].valueString = "Passer godt"
// * item[=].linkId = ""
// * item[=].repeats = false

// * item[+].type = #choice
// * item[=].text = ""
// * item[=].answerOption[0].valueString = "Passer ikke"
// * item[=].answerOption[1].valueString = "Passer delvist"
// * item[=].answerOption[2].valueString = "Passer godt"
// * item[=].linkId = ""
// * item[=].repeats = false

// * item[+].type = #choice
// * item[=].text = ""
// * item[=].answerOption[0].valueString = "Passer ikke"
// * item[=].answerOption[1].valueString = "Passer delvist"
// * item[=].answerOption[2].valueString = "Passer godt"
// * item[=].linkId = ""
// * item[=].repeats = false

// * item[+].type = #choice
// * item[=].text = ""
// * item[=].answerOption[0].valueString = "Passer ikke"
// * item[=].answerOption[1].valueString = "Passer delvist"
// * item[=].answerOption[2].valueString = "Passer godt"
// * item[=].linkId = ""
// * item[=].repeats = false

// * item[+].type = #choice
// * item[=].text = ""
// * item[=].answerOption[0].valueString = "Passer ikke"
// * item[=].answerOption[1].valueString = "Passer delvist"
// * item[=].answerOption[2].valueString = "Passer godt"
// * item[=].linkId = ""
// * item[=].repeats = false

// * item[+].type = #choice
// * item[=].text = ""
// * item[=].answerOption[0].valueString = "Passer ikke"
// * item[=].answerOption[1].valueString = "Passer delvist"
// * item[=].answerOption[2].valueString = "Passer godt"
// * item[=].linkId = ""
// * item[=].repeats = false

// * item[+].type = #choice
// * item[=].text = ""
// * item[=].answerOption[0].valueString = "Passer ikke"
// * item[=].answerOption[1].valueString = "Passer delvist"
// * item[=].answerOption[2].valueString = "Passer godt"
// * item[=].linkId = ""
// * item[=].repeats = false


* item[+].type = #integer
* item[=].text = "Samlet score"
* item[=].linkId = "score"
* item[=].repeats = false

