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
Expression: "entry.select(resource as Observation).all(
    $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-feeding-observation')
 or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-headcircum')
 or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-bodyheight')
 or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-indicator')
 or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-mental-state')
 or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-tobacco-observation')
 or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-bodyweight'))"

Invariant: gateway-children-report-2
Description: "If there is an encounter of type 'Andet besøg i barnets første levemåned' eller 'Besøg ved det 4-6 måneder gamle barn' eller 'indskolingsundersøgelse' eller 'udskolingsundersøgelse' then weight and height meassurements should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).type.coding.where(
    code = '563c4174-f451-4c87-8db8-8d5472ca7ff6'
    or code = '58ff370b-a775-4bec-b24a-91604e0a5fe7'
    or code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or code = 'dd766967-4d02-4c17-8ed3-021852785fdf')).exists() implies (
    entry.select((resource as Observation).code.coding.where(code = '425024002')).exists()
    and entry.select((resource as Observation).code.coding.where(code = '1153637007')).exists())"

//retunerer sandt, hvis der findes en ressource af typen encounter med koden ......
//entry.select((resource as Encounter).type.coding.where(code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d')).exists()
// Implies
//retunerer sandt hvis en ressource af typen Observation har koden højde og en anden har koden vægt
//entry.select((resource as Observation).code.coding.where(code = '248334005')).exists() and entry.select((resource as Observation).code.coding.where(code = '276885007')).exists()
//altså, hvis encounteren er en 2 måneders undersøgelse, så skal der indberettes en højde (længde)
//entry.select((resource as Encounter).type.coding.where(code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d')).exists() implies entry.select((resource as Observation).code.coding.where(code = '276885007')).exists()

Invariant: gateway-children-report-3
Description: "If there is an encounter of type 'Etableringsbesøg' then tobacco observation should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).type.coding.where(code = 'b4bf6058-502a-4d64-bb8e-369661f43b47')).exists() implies (
    entry.select((resource as Observation).code.coding.where(code = '229819007')).exists())"


Instance: RikkeDeliveryReport2nd1mth
InstanceOf: klgateway-children-delivery-report
Description: "Indberetning for Rikke, andet besøg første levemåned"
Usage: #example
* type = #collection
* timestamp = 2020-06-01T23:45:00.000Z

* entry[+].fullUrl = "Patient/Rikke"
* entry[=].resource = Rikke

* entry[+].fullUrl = "Encounter/2nd1mthEncounter"
* entry[=].resource = 2nd1mthEncounter

* entry[+].fullUrl = "Observation/RikkeBodyHeight"
* entry[=].resource = RikkeBodyHeight

* entry[+].fullUrl = "Observation/RikkeBodyWeight"
* entry[=].resource = RikkeBodyWeight



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

//instances used for testing

// Instance: RikkePainVAS
// InstanceOf: Observation
// Usage: #example
// Title: "RikkesPainVAS"
// Description: "rikke smerte målt med VAS"
// * subject = Reference(Rikke)
// * code.coding = $SCT#443394008
// * valueInteger = 20
// * status = #final

// Instance: ERRORinRikkeDeliveryReport2nd1mth
// InstanceOf: klgateway-children-delivery-report
// Description: "Indberetning for Rikke, andet besøg første levemåned uden højde og vægt giver fejl ift. invariant gateway-children-report-2"
// Usage: #example
// * type = #collection
// * timestamp = 2020-06-01T23:45:00.000Z

// * entry[+].fullUrl = "Patient/Rikke"
// * entry[=].resource = Rikke

// * entry[+].fullUrl = "Encounter/2nd1mthEncounter"
// * entry[=].resource = 2nd1mthEncounter

// * entry[+].fullUrl = "Observation/RikkePainVAS"
// * entry[=].resource = RikkePainVAS

