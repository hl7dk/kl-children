Profile: KLGatewayChildrenIndicator
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-observation
Id: klgateway-children-indicator
Title: "KLGatewayChildrenIndicator"
Description: "Abstract indicator profile, used in the children database"
//Constraints
* code.coding 1..2
* code.coding ^slicing.rules = #closed
* code.coding contains
    FBOECode 1..1
* code.coding[LOINC] 0..0
* code.coding[NPU] 0..0
* code.coding[IEEE] 0..0
* code.coding[MedCom] 0..0
* code.coding[SKS] 0..0
* code.coding[FBOECode] from IndicatorCodesChildren (required)
* ^abstract = true
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..2
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #closed
* valueCodeableConcept.coding contains
    FBOECode 1..1 and SNOMEDCT 0..1 
//* valueCodeableConcept from IndicatorResultsChildren
//0..0 cardinalities
* identifier 0..0
* basedOn 0..0
* partOf 0..0
* focus 0..0
* issued 0..0
* performer 0..0
* interpretation 0..0
* note 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* hasMember 0..0
* derivedFrom 0..0
* category 0..0

//Short Danish descriptions
* dataAbsentReason ^short = "[DK] IndikatorMangler"
* code ^short = "[DK] IndikatorKode"
* value[x] ^short = "[DK] IndikatorResultat"
* subject ^short = "[DK] Indikatorsubjekt"
* encounter ^short = "[DK] Indikatorkontakt"
* effectiveDateTime ^short = "[DK] Indikatortid" //Behøver ikke både kontakt og tid.
* status ^short = "[DK] IndikatorStatus"

* obeys obs-2

Invariant: obs-2
Description: "If the value is not given, then explain why using dataAbsentReason"
Severity: #error
Expression: "value.empty() implies dataAbsentReason.exists()"


Profile: KLGatewayChildrenParentsMentalIndicator
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-parent-mental
Title: "KLGatewayChildrenParentsMental"
Description: "Parents mental state model, that inherits from Indicator"
* code.coding[FBOECode] = $FBOE#2c39af9f-8e45-4c88-962f-e7a9e2cd31b6
* code.coding[SNOMEDCT] = $SCT#285854004 //|Emotion (observable entity)|
* valueCodeableConcept.coding[FBOECode] from ParentsMentalCodes (required)

Profile: KLGatewayChildrenSocialInteraction
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-social-interaction
Title: "KLGatewayChildrenInteraction"
Description: "Childrens social interaction, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#68605f88-49fb-44b9-b327-86947af6aa93
* code.coding[SNOMEDCT] = $SCT#225597007 // |Evne til at interagere med andre|
* valueCodeableConcept.coding[FBOECode] from SocialInteractionCodes (required)
* valueCodeableConcept.coding[SNOMEDCT] from SocialInteractionCodesSCT (required)

Profile: KLGatewayChildrenParentRelationship
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-parent-relationship
Title: "KLGatewayChildrenParentRelationship"
Description: "Parent-child relationship, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#763c6f21-5467-4713-82fb-716c9d0a1fdf //Forældre-barn-relation
//* code.coding[SNOMEDCT] = $SCT#000
* valueCodeableConcept.coding[FBOECode] from ChildrenParentRelationshipCodes (required)

Profile: KLGatewayChildrenParentSocialStatus
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-parent-social-status
Title: "KLGatewayChildrenParentSocialStatus"
Description: "Parents social status, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#58997614-ba43-4534-90bd-10c7e76802f4 //	Forælders sårbarhed
//* code.coding[SNOMEDCT] = $SCT#000
* valueCodeableConcept.coding[FBOECode] from ParentSocialStatusCodes (required)

Profile: KLGatewayChildrenSocialSupportNetwork
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-social-support-network
Title: "KLGatewayChildrenSocialSupportNetwork"
Description: "Families social support network, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#7e7fab2f-278a-4b14-9bc9-efc36fffcba5 //Netværk
//* code.coding[SNOMEDCT] = $SCT#000
* valueCodeableConcept.coding[FBOECode] from SocialSupportNetworkCodes (required)

Profile: KLGatewayChildrenCommunication
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-communication
Title: "KLGatewayChildrenCommunication"
Description: "Childrens communication, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#653c2b0b-bb64-4906-888b-aea6fef3c3f8 //Kommunikation
//* code.coding[SNOMEDCT] = $SCT#000
* valueCodeableConcept.coding[FBOECode] from CommunicationCodes (required)

Profile: KLGatewayChildrenSleep
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-sleep
Title: "KLGatewayChildrenSleep"
Description: "Childrens sleep observation, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#73f981f8-455a-4158-b435-7c6d83ab84da //	Søvn
//* code.coding[SNOMEDCT] = $SCT#000
* valueCodeableConcept.coding[FBOECode] from SleepCodes (required)

Profile: KLGatewayChildrenMotorFunction
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-motor-function
Title: "KLGatewayChildrenMotorFunction"
Description: "Childrens motor function, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#e04f2ca1-888a-4671-a97a-371b525cd2a3 //	Motorik
//* code.coding[SNOMEDCT] = $SCT#000
* valueCodeableConcept.coding[FBOECode] from MotorFunctionCodes (required)

Profile: KLGatewayChildrenNutrition
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-nutrition
Title: "KLGatewayChildrenNutrition"
Description: "Childrens nutrition, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 //	Ernæring
//* code.coding[SNOMEDCT] = $SCT#000
* valueCodeableConcept.coding[FBOECode] from NutritionCodes (required)

Profile: KLGatewayChildrenPhysicalActivity
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-physical-activity
Title: "KLGatewayChildrenPhysicalActivity"
Description: "Childrens physical activity, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#b331fe02-a781-4abd-b6db-9331d6a69b15 //	Fysisk aktivitet
//* code.coding[SNOMEDCT] = $SCT#000
* valueCodeableConcept.coding[FBOECode] from PhysicalActivityCodes (required)

Profile: KLGatewayChildrenHearing
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-hearing
Title: "KLGatewayChildrenHearing"
Description: "Childrens hearing, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#a22c4b53-b622-4394-ba13-910a7b0d7b0d //	Hørelse
//* code.coding[SNOMEDCT] = $SCT#000
* valueCodeableConcept.coding[FBOECode] from HearingCodes (required)

Profile: KLGatewayChildrenSight
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-sight
Title: "KLGatewayChildrenSight"
Description: "Childrens sight, that inherits from Indicator"
* code.coding[FBOECode] = Tempcodes#a22c4b53-b622-4394-ba13-910a7b0d7b0d //	Hørelse
//* code.coding[SNOMEDCT] = $SCT#000
* valueCodeableConcept.coding[FBOECode] from SightCodes (required)

Instance: RikkeSocialInteraction
InstanceOf: klgateway-children-social-interaction
Usage: #example
Title: "RikkeIndicatorSI"
Description: "Rikkes sociale kontakt ved 2mrd"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding[FBOECode] = Tempcodes#68605f88-49fb-44b9-b327-86947af6aa93 "Social kontakt"
* code.coding[SNOMEDCT] = $SCT#225597007
* valueCodeableConcept = Tempcodes#e1c1674c-9384-4d95-999f-763f3868f444 "Udfordringer i social kontakt"
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z

Instance: KirstenIndicatorMS
InstanceOf: klgateway-children-parent-mental
Usage: #example
Title: "KirstenIndicatorMS"
Description: "Kirstens psykiske tilstand ved 2mrd"
* subject = Reference(Kirsten)
* code.coding[FBOECode] = $FBOE#2c39af9f-8e45-4c88-962f-e7a9e2cd31b6 "Forælders psykiske tilstand"
* code.coding[SNOMEDCT] = $SCT#285854004 "Emotion (observable entity)"
* valueCodeableConcept = Tempcodes#f86c2526-3b04-454c-a99e-d350f699dc94 "Udfordret psykisk tilstand" 
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z

