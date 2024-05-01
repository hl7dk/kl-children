Profile: KLGatewayChildrenDeliveryReport
Parent: Bundle
Id: klgateway-children-delivery-report
Title: "KLGatewayChildrenDeliveryReport"
Description: "Delivery report to deliver data for each child, including state of the family."
* meta.profile 1..1
* meta.profile = Canonical(klgateway-children-delivery-report)
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link 0..0
* entry.link 0..0
* entry.resource 1..1
* entry.resource only
    klgateway-children-feeding-observation or
    klgateway-children-headcircum or
    klgateway-children-bodyheight or
    klgateway-children-exam-result or
    klgateway-children-bodyweight or
    klgateway-children-encounter or
    klgateway-children-citizen or
    klgateway-children-related-parent or
    klgateway-children-intervention or
    klgateway-children-questionnaire-response or
    klgateway-children-location or
    klgateway-children-social-interaction or
    klgateway-children-parent-relationship or
    klgateway-children-parent-social-status or
    klgateway-children-parent-mental-status or
    klgateway-children-social-support-network or
    klgateway-children-communication or
    klgateway-children-sleep or
    klgateway-children-motor-function or
    klgateway-children-nutrition or
    klgateway-children-physical-activity or
    klgateway-children-hearing or
    klgateway-children-sight or
    klgateway-children-passive-smoking or
    klgateway-children-nicotine
* entry.search ..0
* entry.request ..0
* entry.response ..0
* signature ..0
* entry ^short = "[DK] indberetningsrapportIndhold"
* timestamp ^short = "[DK] indberetningsrapportTid"
* meta.profile ^short = "[DK] indberetningsrapportProfil"
//* obeys gateway-children-report-1
* obeys gateway-children-report-parent-mental-state
* obeys gateway-children-report-parent-social-status
* obeys gateway-children-report-support-network
* obeys gateway-children-report-social-interaction
* obeys gateway-children-report-parent-relationship
* obeys gateway-children-report-weight
* obeys gateway-children-report-height
* obeys gateway-children-report-head-circumference
* obeys gateway-children-report-passive-smoking
* obeys gateway-children-report-nicotine
* obeys gateway-children-report-nutrition
* obeys gateway-children-report-communication
* obeys gateway-children-report-sleep
* obeys gateway-children-report-motor-function
* obeys gateway-children-report-physical-activity
* obeys gateway-children-report-hearing
* obeys gateway-children-report-sight

// Invariant: gateway-children-report-1
// Description: "All observation resources shall conform to the observation profiles defined in this IG"
// Severity: #error
// Expression: "entry.select(resource as Observation).all(
//     $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-feeding-observation')
//  or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-headcircum')
//  or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-bodyheight')
//  or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-indicator')
//  or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-exam-result')
//  or $this.conformsTo('http://fhir.kl.dk/children/StructureDefinition/klgateway-children-bodyweight'))"

//Invariant: gateway-children-report-2
//Description: "If there is an encounter of type 'Andet besøg i barnets første levemåned' eller 'Besøg ved det 4-6 måneder gamle barn' eller 'indskolingsundersøgelse' eller 'udskolingsundersøgelse' then weight and height meassurements should be included in the bundle"
//Severity: #error
//Expression: "entry.select((resource as Encounter).type.coding.where(
    // code = '563c4174-f451-4c87-8db8-8d5472ca7ff6'
    // or code = '58ff370b-a775-4bec-b24a-91604e0a5fe7'
    // or code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    // or code = 'dd766967-4d02-4c17-8ed3-021852785fdf')).exists() implies (
    // entry.select((resource as Observation).code.coding.where(code = '425024002')).exists()
    // and entry.select((resource as Observation).code.coding.where(code = '1153637007')).exists())"



Invariant: gateway-children-report-parent-mental-state
Description: "If there is an encounter of type 'Graviditetsbesøg', 'Besøg ved det ca. 2 måneder gamle barn' delivered face-to-face, then parents mental state should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = 'd3c00541-f1d3-4c43-b5fc-16e8914ca1df'
    or type.coding.code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '2c39af9f-8e45-4c88-962f-e7a9e2cd31b6')).exists()"

Invariant: gateway-children-report-parent-social-status
Description: "If there is an encounter of type 'Graviditetsbesøg', 'Etableringsbesøg' delivered face-to-face, then parent-social-status should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = 'd3c00541-f1d3-4c43-b5fc-16e8914ca1df'
    or type.coding.code = 'b4bf6058-502a-4d64-bb8e-369661f43b47')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '58997614-ba43-4534-90bd-10c7e76802f4')).exists()"

Invariant: gateway-children-report-support-network
Description: "If there is an encounter of type 'Graviditetsbesøg', 'Etableringsbesøg' delivered face-to-face, then support network should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = 'd3c00541-f1d3-4c43-b5fc-16e8914ca1df'
    or type.coding.code = 'b4bf6058-502a-4d64-bb8e-369661f43b47')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '7e7fab2f-278a-4b14-9bc9-efc36fffcba5')).exists()"

Invariant: gateway-children-report-social-interaction
Description: "If there is an encounter of type 'Besøg ved det ca. 2 måneder gamle barn', 'Besøg ved det 4-6 måneder gamle barn', 'Besøg ved det 8-11 måneder gamle barn', 'Indskolingsundersøgelse', 'Udskolingsundersøgelse',  delivered face-to-face, then social interaction should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d'
    or type.coding.code = '58ff370b-a775-4bec-b24a-91604e0a5fe7'
    or type.coding.code = '3f3e6489-31bd-44cf-9920-3c632868feb7'
    or type.coding.code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or type.coding.code = 'dd766967-4d02-4c17-8ed3-021852785fdf')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '68605f88-49fb-44b9-b327-86947af6aa93')).exists()"

Invariant: gateway-children-report-parent-relationship
Description: "If there is an encounter of type 'Barselsbesøg', 'Etableringsbesøg', 'Andet besøg i barnets første levemåned', 'Besøg ved det ca. 2 måneder gamle barn', 'Besøg ved det 4-6 måneder gamle barn', 'Besøg ved det 8-11 måneder gamle barn',  delivered face-to-face, then parent relationship should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = '7d35a193-e808-4e77-b361-6c0d114d021f'
    or type.coding.code = 'b4bf6058-502a-4d64-bb8e-369661f43b47'
    or type.coding.code = '563c4174-f451-4c87-8db8-8d5472ca7ff6'
    or type.coding.code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d'
    or type.coding.code = '58ff370b-a775-4bec-b24a-91604e0a5fe7')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '763c6f21-5467-4713-82fb-716c9d0a1fdf')).exists()"

Invariant: gateway-children-report-weight
Description: "If there is an encounter of type 'Barselsbesøg', 'Etableringsbesøg', 'Andet besøg i barnets første levemåned', 'Besøg ved det ca. 2 måneder gamle barn', 'Besøg ved det 4-6 måneder gamle barn', 'Besøg ved det 8-11 måneder gamle barn', 'Indskolingsundersøgelse', 'Undersøgelse i mellemtrin, med måling', 'Udskolingsundersøgelse',  delivered face-to-face, then weight should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = '7d35a193-e808-4e77-b361-6c0d114d021f'
    or type.coding.code = 'b4bf6058-502a-4d64-bb8e-369661f43b47'
    or type.coding.code = '563c4174-f451-4c87-8db8-8d5472ca7ff6'
    or type.coding.code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d'
    or type.coding.code = '58ff370b-a775-4bec-b24a-91604e0a5fe7'
    or type.coding.code = '3f3e6489-31bd-44cf-9920-3c632868feb7'
    or type.coding.code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or type.coding.code = 'd01bcb90-2b29-44f4-834c-191d6dd4a08a'
    or type.coding.code = 'dd766967-4d02-4c17-8ed3-021852785fdf')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '27113001')).exists()"

Invariant: gateway-children-report-height
Description: "If there is an encounter of type 'Etableringsbesøg', 'Andet besøg i barnets første levemåned', 'Besøg ved det ca. 2 måneder gamle barn', 'Besøg ved det 4-6 måneder gamle barn', 'Besøg ved det 8-11 måneder gamle barn', 'Indskolingsundersøgelse', 'Undersøgelse i mellemtrin, med måling', 'Udskolingsundersøgelse',  delivered face-to-face, then height should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = 'b4bf6058-502a-4d64-bb8e-369661f43b47'
    or type.coding.code = '563c4174-f451-4c87-8db8-8d5472ca7ff6'
    or type.coding.code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d'
    or type.coding.code = '58ff370b-a775-4bec-b24a-91604e0a5fe7'
    or type.coding.code = '3f3e6489-31bd-44cf-9920-3c632868feb7'
    or type.coding.code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or type.coding.code = 'd01bcb90-2b29-44f4-834c-191d6dd4a08a'
    or type.coding.code = 'dd766967-4d02-4c17-8ed3-021852785fdf')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies (
    entry.select((resource as Observation).code.coding.where(code = '1153637007')).exists()
    or entry.select((resource as Observation).code.coding.where(code = '248333004')).exists()
    or entry.select((resource as Observation).code.coding.where(code = '1149101003')).exists())"

Invariant: gateway-children-report-head-circumference
Description: "If there is an encounter of type 'Etableringsbesøg', 'Andet besøg i barnets første levemåned', 'Besøg ved det ca. 2 måneder gamle barn', 'Besøg ved det 4-6 måneder gamle barn', 'Besøg ved det 8-11 måneder gamle barn' delivered face-to-face, then head circumference should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = 'b4bf6058-502a-4d64-bb8e-369661f43b47'
    or type.coding.code = '563c4174-f451-4c87-8db8-8d5472ca7ff6'
    or type.coding.code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d'
    or type.coding.code = '58ff370b-a775-4bec-b24a-91604e0a5fe7'
    or type.coding.code = '3f3e6489-31bd-44cf-9920-3c632868feb7')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '363812007')).exists()"

Invariant: gateway-children-report-passive-smoking
Description: "If there is an encounter of type 'Etableringsbesøg' delivered face-to-face, then pasive smoking should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = 'b4bf6058-502a-4d64-bb8e-369661f43b47')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '28972d4b-fea3-42ec-b2a5-e2a26f79b14d')).exists()"

Invariant: gateway-children-report-nicotine
Description: "If there is an encounter of type 'Udskolingsundersøgelse' delivered face-to-face, then nicotine should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = 'b4bf6058-502a-4d64-bb8e-369661f43b47')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '76891f7b-cf49-4cb2-88d6-728a509eb75d')).exists()"

Invariant: gateway-children-report-nutrition
Description: "If there is an encounter of type 'Barselsbesøg', 'Etableringsbesøg', 'Andet besøg i barnets første levemåned', 'Besøg ved det ca. 2 måneder gamle barn', 'Besøg ved det 4-6 måneder gamle barn', 'Besøg ved det 8-11 måneder gamle barn', 'Indskolingsundersøgelse', 'Udskolingsundersøgelse',  delivered face-to-face, then nutrition should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = '7d35a193-e808-4e77-b361-6c0d114d021f'
    or type.coding.code = 'b4bf6058-502a-4d64-bb8e-369661f43b47'
    or type.coding.code = '563c4174-f451-4c87-8db8-8d5472ca7ff6'
    or type.coding.code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d'
    or type.coding.code = '58ff370b-a775-4bec-b24a-91604e0a5fe7'
    or type.coding.code = '3f3e6489-31bd-44cf-9920-3c632868feb7'
    or type.coding.code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or type.coding.code = 'dd766967-4d02-4c17-8ed3-021852785fdf')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = 'e61e4dab-54bb-4bf4-9b76-8d991cf4de08')).exists()"

Invariant: gateway-children-report-communication
Description: "If there is an encounter of type 'Besøg ved det ca. 2 måneder gamle barn', 'Besøg ved det 4-6 måneder gamle barn', 'Besøg ved det 8-11 måneder gamle barn', 'Indskolingsundersøgelse', 'Udskolingsundersøgelse',  delivered face-to-face, then communication should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = '563c4174-f451-4c87-8db8-8d5472ca7ff6'
    or type.coding.code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d'
    or type.coding.code = '58ff370b-a775-4bec-b24a-91604e0a5fe7'
    or type.coding.code = '3f3e6489-31bd-44cf-9920-3c632868feb7'
    or type.coding.code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or type.coding.code = 'dd766967-4d02-4c17-8ed3-021852785fdf')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '653c2b0b-bb64-4906-888b-aea6fef3c3f8')).exists()"

Invariant: gateway-children-report-sleep
Description: "If there is an encounter of type 'Besøg ved det ca. 2 måneder gamle barn', 'Besøg ved det 4-6 måneder gamle barn', 'Besøg ved det 8-11 måneder gamle barn', 'Indskolingsundersøgelse', 'Udskolingsundersøgelse',  delivered face-to-face, then sleep should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d'
    or type.coding.code = '58ff370b-a775-4bec-b24a-91604e0a5fe7'
    or type.coding.code = '3f3e6489-31bd-44cf-9920-3c632868feb7'
    or type.coding.code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or type.coding.code = 'dd766967-4d02-4c17-8ed3-021852785fdf')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '73f981f8-455a-4158-b435-7c6d83ab84da')).exists()"

Invariant: gateway-children-report-motor-function
Description: "If there is an encounter of type 'Besøg ved det ca. 2 måneder gamle barn', 'Besøg ved det 4-6 måneder gamle barn', 'Besøg ved det 8-11 måneder gamle barn', 'Indskolingsundersøgelse', 'Udskolingsundersøgelse',  delivered face-to-face, then sleep should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d'
    or type.coding.code = '58ff370b-a775-4bec-b24a-91604e0a5fe7'
    or type.coding.code = '3f3e6489-31bd-44cf-9920-3c632868feb7'
    or type.coding.code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or type.coding.code = 'dd766967-4d02-4c17-8ed3-021852785fdf')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '73f981f8-455a-4158-b435-7c6d83ab84da')).exists()"

Invariant: gateway-children-report-physical-activity
Description: "If there is an encounter of type 'Indskolingsundersøgelse', 'Udskolingsundersøgelse',  delivered face-to-face, then physical activity should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or type.coding.code = 'dd766967-4d02-4c17-8ed3-021852785fdf')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = 'b331fe02-a781-4abd-b6db-9331d6a69b15')).exists()"

Invariant: gateway-children-report-hearing
Description: "If there is an encounter of type 'Indskolingsundersøgelse', 'Udskolingsundersøgelse',  delivered face-to-face, then hearing should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or type.coding.code = 'dd766967-4d02-4c17-8ed3-021852785fdf')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = 'a22c4b53-b622-4394-ba13-910a7b0d7b0d')).exists()"

Invariant: gateway-children-report-sight
Description: "If there is an encounter of type 'Indskolingsundersøgelse', 'Udskolingsundersøgelse',  delivered face-to-face, then sight should be included in the bundle"
Severity: #error
Expression: "entry.select((resource as Encounter).where(
    (type.coding.code = 'c06ed6f1-be9d-460e-a45e-34821bcbd533'
    or type.coding.code = 'dd766967-4d02-4c17-8ed3-021852785fdf')
    and
    (class.code = 'HH'
    or class.code = 'AMB'))).exists() implies 
    entry.select((resource as Observation).code.coding.where(code = '01fddd46-ed7c-423d-b191-ffdd977dd61e')).exists()"


//retunerer sandt, hvis der findes en ressource af typen encounter med koden ......
//entry.select((resource as Encounter).type.coding.where(code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d')).exists()
// Implies
//retunerer sandt hvis en ressource af typen Observation har koden højde og en anden har koden vægt
//entry.select((resource as Observation).code.coding.where(code = '248334005')).exists() and entry.select((resource as Observation).code.coding.where(code = '276885007')).exists()
//altså, hvis encounteren er en 2 måneders undersøgelse, så skal der indberettes en højde (længde)
//entry.select((resource as Encounter).type.coding.where(code = '51f30d1c-d60e-4e3e-ac22-ec9712ea962d')).exists() implies entry.select((resource as Observation).code.coding.where(code = '276885007')).exists()

// Invariant: gateway-children-report-3
// Description: "If there is an encounter of type 'Etableringsbesøg' then tobacco observation should be included in the bundle"
// Severity: #error
// Expression: "entry.select((resource as Encounter).type.coding.where(code = 'b4bf6058-502a-4d64-bb8e-369661f43b47')).exists() implies (
//     entry.select((resource as Observation).code.coding.where(code = '229819007')).exists())"


Instance: RikkeDeliveryReport2nd1mth
InstanceOf: klgateway-children-delivery-report
Description: "Indberetning for Rikke, andet besøg første levemåned"
Usage: #example
* type = #collection
* timestamp = 2020-06-01T23:45:00.000Z

* entry[+].fullUrl = Canonical(Rikke)
* entry[=].resource = Rikke

* entry[+].fullUrl = Canonical(2nd1mthEncounter)
* entry[=].resource = 2nd1mthEncounter

* entry[+].fullUrl = Canonical(RikkeBodyHeight)
* entry[=].resource = RikkeBodyHeight

* entry[+].fullUrl = Canonical(RikkeBodyWeight)
* entry[=].resource = RikkeBodyWeight



Instance: RikkeDeliveryReport2months
InstanceOf: klgateway-children-delivery-report
Description: "Indberetning for Rikke 2 måneder"
Usage: #example
* type = #collection
* timestamp = 2020-07-08T23:45:00.000Z

* entry[+].fullUrl = Canonical(Rikke)
* entry[=].resource = Rikke

* entry[+].fullUrl = Canonical(Kirsten)
* entry[=].resource = Kirsten

* entry[+].fullUrl = Canonical(RikkesParent)
* entry[=].resource = RikkesParent

* entry[+].fullUrl = Canonical(2mthEncounter)
* entry[=].resource = 2mthEncounter

* entry[+].fullUrl = Canonical(KirstenParentMentalStatus)
* entry[=].resource = KirstenParentMentalStatus

* entry[+].fullUrl = Canonical(EPDSAnswerKirsten)
* entry[=].resource = EPDSAnswerKirsten

* entry[+].fullUrl = Canonical(RikkeSocialInteraction)
* entry[=].resource = RikkeSocialInteraction

* entry[+].fullUrl = Canonical(RikkeChildrenParentRelationship)
* entry[=].resource = RikkeChildrenParentRelationship

* entry[+].fullUrl = Canonical(RikkeBodyWeight2mth)
* entry[=].resource = RikkeBodyWeight2mth

* entry[+].fullUrl = Canonical(RikkeBodyHeight2mth)
* entry[=].resource = RikkeBodyHeight2mth

* entry[+].fullUrl = Canonical(RikkeHeadCircum)
* entry[=].resource = RikkeHeadCircum

* entry[+].fullUrl = Canonical(RikkeFeedingObservationPeriod)
* entry[=].resource = RikkeFeedingObservationPeriod

* entry[+].fullUrl = Canonical(RikkeFeedingObservationStatus)
* entry[=].resource = RikkeFeedingObservationStatus

* entry[+].fullUrl = Canonical(RikkeFeedingObservationNewPeriod)
* entry[=].resource = RikkeFeedingObservationNewPeriod

* entry[+].fullUrl = Canonical(RikkeCommunication2mth)
* entry[=].resource = RikkeCommunication2mth

* entry[+].fullUrl = Canonical(RikkeSleep2mth)
* entry[=].resource = RikkeSleep2mth

* entry[+].fullUrl = Canonical(RikkeMotorFunction2mth)
* entry[=].resource = RikkeMotorFunction2mth

* entry[+].fullUrl = Canonical(RikkeEyeContact2mth)
* entry[=].resource = RikkeEyeContact2mth

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

