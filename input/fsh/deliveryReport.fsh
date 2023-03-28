Profile: KLGatewayChildrenDeliveryReport
Parent: Bundle
Id: klgateway-children-delivery-report
Title: "KLGatewayChildrenDeliveryReport"
Description: "Delivery report to deliver data for each child, including state of the family."
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link 0..0
* entry.link 0..0
* entry.resource 1..1
* entry.resource only
    Observation or
    klgateway-children-encounter or
    klgateway-children-citizen or
    klgateway-children-related-parent
* entry.search ..0
* entry.request ..0
* entry.response ..0
* signature ..0
* entry ^short = "[DK] indberetningsrapportIndhold"
* obeys gateway-children-report-1
* obeys gateway-children-report-2


Invariant: gateway-children-report-1
Description: "All observation resources shall conform to the observation profiles definesd in this IG"
Severity: #error
Expression: "entry.ofType(Condition).all(
    resource.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-feeding-observation')
 or resource.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-headcircum')
 or resource.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-bodyheight')
 or resource.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-indicator')
 or resource.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-mental-state')
 or resource.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-tobacco-observation')
 or resource.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-bodyweight'))"

Invariant: gateway-children-report-2
Description: "If there is an encounter of type '2 måneders undersøgelse' then weight and height meassurements should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).type.coding.where(code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d')).exists() implies (
    entry.select((resource as Observation).code.coding.where(code = '276885007')).exists()
    and entry.select((resource as Observation).code.coding.where(code = '248334005')).exists())"


//retunerer sandt, hvis der findes en ressource af typen encounter med koden ......
//entry.select((resource as Encounter).type.coding.where(code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d')).exists()
// Implies
//retunerer sandt hvis en ressource af typen Observation har koden højde og en anden har koden vægt
//entry.select((resource as Observation).code.coding.where(code = '248334005')).exists() and entry.select((resource as Observation).code.coding.where(code = '276885007')).exists()
//altså, hvis encounteren er en 2 måneders undersøgelse, så skal der indberettes en højde (længde)
//entry.select((resource as Encounter).type.coding.where(code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d')).exists() implies entry.select((resource as Observation).code.coding.where(code = '276885007')).exists()

Instance: RikkeDeliveryReport2months
InstanceOf: klgateway-children-delivery-report
Description: "Indberetning for Rikke 2 måneder"
Usage: #example
* type = #collection
* timestamp = 2020-07-08T23:45:00.000Z

* entry[+].fullUrl = "Patient/Rikke"
* entry[=].resource = Rikke

* entry[+].fullUrl = "Patient/Kirsten"
* entry[=].resource = Kirsten

* entry[+].fullUrl = "RelatedPerson/RikkesParent"
* entry[=].resource = RikkesParent

* entry[+].fullUrl = "Encounter/2mthEncounter"
* entry[=].resource = 2mthEncounter

* entry[+].fullUrl = "Observation/RikkeBodyHeight"
* entry[=].resource = RikkeBodyHeight

* entry[+].fullUrl = "Observation/RikkeBodyWeight"
* entry[=].resource = RikkeBodyWeight

* entry[+].fullUrl = "Observation/RikkeHeadCircum"
* entry[=].resource = RikkeHeadCircum

* entry[+].fullUrl = "Observation/RikkeTobaccoObservation"
* entry[=].resource = RikkeTobaccoObservation

* entry[+].fullUrl = "Observation/RikkeFeedingObservation"
* entry[=].resource = RikkeFeedingObservation

* entry[+].fullUrl = "Observation/RikkeIndicatorSK"
* entry[=].resource = RikkeIndicatorSK

* entry[+].fullUrl = "Observation/KirstenIndicatorMS"
* entry[=].resource = KirstenIndicatorMS

Instance: RikkeDeliveryReport2monthsError
InstanceOf: klgateway-children-delivery-report
Description: "Indberetning for Rikke 2 måneder, giver fejl ift. invariant gateway-children-report-2"
Usage: #example
* type = #collection
* timestamp = 2020-07-08T23:45:00.000Z

* entry[+].fullUrl = "Patient/Rikke"
* entry[=].resource = Rikke

* entry[+].fullUrl = "Patient/Kirsten"
* entry[=].resource = Kirsten

* entry[+].fullUrl = "RelatedPerson/RikkesParent"
* entry[=].resource = RikkesParent

* entry[+].fullUrl = "Encounter/2mthEncounter"
* entry[=].resource = 2mthEncounter

* entry[+].fullUrl = "Observation/RikkeIndicatorSK"
* entry[=].resource = RikkeIndicatorSK

* entry[+].fullUrl = "Observation/KirstenIndicatorMS"
* entry[=].resource = KirstenIndicatorMS