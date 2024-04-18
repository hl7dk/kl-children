Extension: BasedOnInterventionExtension
Title:     "basedOnInterventionExtension"
Description: "Extension for pointing to the intervention describing why this encounter is taking place (will be part of R5 and comming FHIR versions without needing the extension)"
* value[x] 1..1
* value[x] only Reference(klgateway-children-intervention)
* ^context.type = http://hl7.org/fhir/extension-context-type#element
* ^context.expression = "Encounter"

Extension: FindingInformer
Title: "FindingInformer"
Description: "Extension for pointing to who the source of information is"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from FindingInformerCodes
* ^context[0].type = http://hl7.org/fhir/extension-context-type#element
* ^context[0].expression = "Observation"
* ^context[1].type = http://hl7.org/fhir/extension-context-type#element
* ^context[1].expression = "QuestionnaireResponse"

// Extension: Technique
// Title: "Technique"
// Description: "Extension for pointing to the techniqe used to obtain the result of a questionaire"
// * value[x] 1..1
// * value[x] only CodeableConcept
// * value[x] from KLtechniquesCodes
// * ^context[0].type = http://hl7.org/fhir/extension-context-type#element
// * ^context[0].expression = "Observation"
// * ^context[1].type = http://hl7.org/fhir/extension-context-type#element
// * ^context[1].expression = "QuestionnaireResponse"