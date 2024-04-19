Instance: klgateway-children-puf
InstanceOf: KLGatewayChildrenQuestionnaire
Usage: #definition
Title: "KLGatewayChildrenPUF"
* status = #active
* publisher = "Kommunernes Landsforening"
* description = "Copenhagen Infant Mental Health Screening/PSYKISK UDVIKLING OG FUNKTION (PUF)"
* name = "KLGatewayChildrenPUF"
//* code = $SCT#450320001 //|Edinburgh postnatal depression scale score|
* copyright = "Users may only use PUF if they first complete appropriate training as offered by University of Southern Denmark https://www.sdu.dk/da/sif/forskning/projekter/puf-programmet. The copyright should be respected. PUF was first described in: Ammitzbøll, J., Holstein, B. E., Wilms, L., Andersen, A., & Skovgaard, A. M. (2016). A new measure for infant mental health screening: development and initial validation. BMC pediatrics, 16, 1-10."
* item[0].type = #boolean
* item[0].text = "Fast søvnrytme"
* item[0].linkId = "1sleepPattern"
* item[0].repeats = false

* item[+].type = #boolean
* item[=].text = "Indsovning"
* item[=].linkId = "2fallingAsleep"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Sammenhængende søvn"
* item[=].linkId = "3cohesiveSleep"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Appetitregulering"
* item[=].linkId = "4appetite"

* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Småtspisende"
* item[=].linkId = "5pickyEater"

* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Vægrer sig ved at spise"
* item[=].linkId = "6rejectsFood"

* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Kaster op uden i øvrigt at være syg"
* item[=].linkId = "7throwsUp"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Gennemgående glad og tilfreds"
* item[=].linkId = "8happy"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Ofte irritabel, pirrelig, utilfreds"
* item[=].linkId = "9irritable"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Græder meget"
* item[=].linkId = "10cry"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Følelsesmæssig nedtonet"
* item[=].linkId = "11feelingLow"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Nysgerrig, udforskende"
* item[=].linkId = "12curious"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Kan fokusere sin opmærksomhed"
* item[=].linkId = "13attention"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Fastholde koncentration"
* item[=].linkId = "14concentration"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Afledes let"
* item[=].linkId = "15distracted"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Motorisk udvikling"
* item[=].linkId = "16motorFunction"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Generelt nedsat aktivitetsniveau"
* item[=].linkId = "17lowActivity"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Generelt øget aktivitetsniveau"
* item[=].linkId = "18highActivity"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Impulsivitet"
* item[=].linkId = "19Impulsive"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Øjenkontakt"
* item[=].linkId = "20eyeContact"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Kontaktsmil"
* item[=].linkId = "21contactSmiles"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Gensidig kommunikation"
* item[=].linkId = "22communication"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Fælles opmærksomhed"
* item[=].linkId = "23commonAttention"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Kropskontakt"
* item[=].linkId = "24bodyContact"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Selektivitet"
* item[=].linkId = "25selective"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Sprogforståelse"
* item[=].linkId = "26understand"
* item[=].repeats = false

* item[+].type = #boolean
* item[=].text = "Sprogligt udtryk"
* item[=].linkId = "27language"
* item[=].repeats = false

* item[+].type = #integer
* item[=].text = "Samlet score"
* item[=].linkId = "score"
* item[=].repeats = false

Instance: PUFAnswerRikke
InstanceOf: KLGatewayChildrenQuestionnaireResponse
Usage: #example
Title: "PUFAnswerRikke"
Description: "PUF besvarelse Rikke"
* questionnaire = "http://fhir.kl.dk/children/Questionnaire/klgateway-children-puf"
* status = #completed
* subject = Reference(Rikke)
* extension[findingInformer].valueCodeableConcept = Tempcodes#601dbb34-a0ad-449b-8f03-6dcce9121b97 "Medarbejder og pårørende alene"
* item[0].linkId = "1sleepPattern"
* item[=].answer.valueBoolean = true

* item[+].linkId = "2fallingAsleep"
* item[=].answer.valueBoolean = true

* item[+].linkId = "3cohesiveSleep"
* item[=].answer.valueBoolean = true

* item[+].linkId = "4appetite"
* item[=].answer.valueBoolean = true

* item[+].linkId = "5pickyEater"
* item[=].answer.valueBoolean = false

* item[+].linkId = "6rejectsFood"
* item[=].answer.valueBoolean = false

* item[+].linkId = "7throwsUp"
* item[=].answer.valueBoolean = false

* item[+].linkId = "8happy"
* item[=].answer.valueBoolean = true

* item[+].linkId = "9irritable"
* item[=].answer.valueBoolean = false

* item[+].linkId = "10cry"
* item[=].answer.valueBoolean = false

* item[+].linkId = "11feelingLow"
* item[=].answer.valueBoolean = false

* item[+].linkId = "12curious"
* item[=].answer.valueBoolean = true

* item[+].linkId = "13attention"
* item[=].answer.valueBoolean = true

* item[+].linkId = "14concentration"
* item[=].answer.valueBoolean = true

* item[+].linkId = "15distracted"
* item[=].answer.valueBoolean = false

* item[+].linkId = "16motorFunction"
* item[=].answer.valueBoolean = true

* item[+].linkId = "17lowActivity"
* item[=].answer.valueBoolean = false

* item[+].linkId = "18highActivity"
* item[=].answer.valueBoolean = false

* item[+].linkId = "19Impulsive"
* item[=].answer.valueBoolean = false

* item[+].linkId = "20eyeContact"
* item[=].answer.valueBoolean = true

* item[+].linkId = "21contactSmiles"
* item[=].answer.valueBoolean = true

* item[+].linkId = "22communication"
* item[=].answer.valueBoolean = true

* item[+].linkId = "23commonAttention"
* item[=].answer.valueBoolean = true

* item[+].linkId = "24bodyContact"
* item[=].answer.valueBoolean = true

* item[+].linkId = "25selective"
* item[=].answer.valueBoolean = true

* item[+].linkId = "26understand"
* item[=].answer.valueBoolean = true

* item[+].linkId = "27language"
* item[=].answer.valueBoolean = true

* item[+].linkId = "score"
* item[=].answer.valueInteger = 0
