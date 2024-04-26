Profile: KLGatewayChildrenIndicator
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-observation
Id: klgateway-children-indicator
Title: "KLGatewayChildrenIndicator"
Description: "Abstract indicator profile, used in the children database"
//Constraints
* code.coding 1..1
* code.coding ^slicing.rules = #closed
* code.coding contains
    FBOECode 0..1 and // 1..1
    TempCode 0..1 //slet
* code.coding[LOINC] 0..0
* code.coding[NPU] 0..0
* code.coding[IEEE] 0..0
* code.coding[MedCom] 0..0
* code.coding[SKS] 0..0
* code.coding[SNOMEDCT] 0..0
* code.coding[FBOECode] from IndicatorCodesChildren (required)
* code.coding[FBOECode].system = $FBOE
* code.coding[TempCode] from IndicatorCodesChildren (required) //slet
* code.coding[TempCode].system = Canonical(Tempcodes)
* ^abstract = true
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..1
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
* effectiveInstant 0..0
* effectivePeriod 0..0
* effectiveTiming 0..0
* obeys obs-2

//Short Danish descriptions
* dataAbsentReason ^short = "[DK] IndikatorMangler"
* code ^short = "[DK] IndikatorKode"
* value[x] ^short = "[DK] IndikatorResultat"
* subject ^short = "[DK] Indikatorsubjekt"
* encounter ^short = "[DK] Indikatorkontakt"
* effectiveDateTime ^short = "[DK] Indikatortid" //Behøver ikke både kontakt og tid.
* status ^short = "[DK] IndikatorStatus"


Invariant: obs-2
Description: "If the value is not given, then explain why using dataAbsentReason"
Severity: #error
Expression: "value.empty() implies dataAbsentReason.exists()"

//udkommenteret fordi slicingen ikke virker med FBOE, kommer senere når resten af koderne også er i FBOE
//Profile: KLGatewayChildrenIndicatorParentsMentalIndicator
//Parent: KLGatewayChildrenIndicator
//Id: klgateway-children-parent-mental
//itle: "KLGatewayChildrenIndicatorParentsMental"
//Description: "Parents mental state model, that inherits from Indicator"
//* code.coding[FBOECode] = $FBOE#2c39af9f-8e45-4c88-962f-e7a9e2cd31b6
//* code.coding[SNOMEDCT] = $SCT#285854004 //|Emotion (observable entity)|
//* valueCodeableConcept.coding[FBOECode] from ParentsMentalCodes (required)

Profile: KLGatewayChildrenIndicatorSocialInteraction
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-social-interaction
Title: "KLGatewayChildrenIndicatorInteraction"
Description: "Childrens social interaction, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#68605f88-49fb-44b9-b327-86947af6aa93 //Social kontakt
* valueCodeableConcept.coding from SocialInteractionCodes (required)

Instance: RikkeSocialInteraction
InstanceOf: klgateway-children-social-interaction
Usage: #example
Title: "RikkeSocialInteraction"
Description: "Rikkes sociale kontakt ved 2mrd"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding[TempCode] = Tempcodes#68605f88-49fb-44b9-b327-86947af6aa93 "Social kontakt"
* valueCodeableConcept = Tempcodes#e1c1674c-9384-4d95-999f-763f3868f444 "Udfordringer i social kontakt"
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z

Profile: KLGatewayChildrenIndicatorParentRelationship
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-parent-relationship
Title: "KLGatewayChildrenIndicatorParentRelationship"
Description: "Parent-child relationship, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#763c6f21-5467-4713-82fb-716c9d0a1fdf //Forælder-barn-relation
* valueCodeableConcept.coding from ChildrenParentRelationshipCodes (required)

Instance: RikkeChildrenParentRelationship
InstanceOf: klgateway-children-parent-relationship
Usage: #example
Title: "RikkeChildrenParentRelationship"
Description: "Rikkes relation til forældre ved 2mrd"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding[TempCode] = Tempcodes#763c6f21-5467-4713-82fb-716c9d0a1fdf "Forælder-barn-relation"
* valueCodeableConcept = Tempcodes#7a107df6-8fb8-4744-8413-be10b4c5c1d9 "Velfungerende forældre-barn-relation"
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z

Profile: KLGatewayChildrenIndicatorParentSocialStatus
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-parent-social-status
Title: "KLGatewayChildrenIndicatorParentSocialStatus"
Description: "parent's social status, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#58997614-ba43-4534-90bd-10c7e76802f4 //	Forælders sårbarhed
* valueCodeableConcept.coding from ParentSocialStatusCodes (required)

Profile: KLGatewayChildrenIndicatorParentMentalStatus
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-parent-mental-status
Title: "KLGatewayChildrenIndicatorParentMentalStatus"
Description: "Parent's mental status, that inherits from Indicator"
* code.coding[FBOECode] = $FBOE#2c39af9f-8e45-4c88-962f-e7a9e2cd31b6 // Forælders psykiske tilstand
* valueCodeableConcept.coding from ParentsMentalCodes (required)

Instance: KirstenParentMentalStatus
InstanceOf: klgateway-children-parent-mental-status
Usage: #example
Title: "KirstenParentMentalStatus"
Description: "Kirstens psykiske tilstand ved Rikkes 2mrd"
* subject = Reference(Kirsten)
* code.coding[FBOECode] = $FBOE#2c39af9f-8e45-4c88-962f-e7a9e2cd31b6 "Forælders psykiske tilstand"
* valueCodeableConcept = Tempcodes#b8220216-e185-451b-8d2a-67cdf73c42c3 "Let påvirket psykisk tilstand"
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z

Profile: KLGatewayChildrenIndicatorSocialSupportNetwork
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-social-support-network
Title: "KLGatewayChildrenIndicatorSocialSupportNetwork"
Description: "Families social support network, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#7e7fab2f-278a-4b14-9bc9-efc36fffcba5 //Netværk
* valueCodeableConcept.coding from SocialSupportNetworkCodes (required)

Profile: KLGatewayChildrenIndicatorCommunication
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-communication
Title: "KLGatewayChildrenIndicatorCommunication"
Description: "Childrens communication, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#653c2b0b-bb64-4906-888b-aea6fef3c3f8 //Kommunikation
* valueCodeableConcept.coding from CommunicationCodes (required)

Instance: RikkeCommunication2mth
InstanceOf: klgateway-children-communication
Usage: #example
Title: "RikkeCommunication2mth"
Description: "Rikkes kommunikation ved 2mrd"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding[TempCode] = Tempcodes#653c2b0b-bb64-4906-888b-aea6fef3c3f8 "Kommunikation"
* valueCodeableConcept = Tempcodes#042d522d-0abe-46eb-a958-6e235b5d5408 "Kommunikerer alderssvarende" 
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z

Profile: KLGatewayChildrenIndicatorSleep
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-sleep
Title: "KLGatewayChildrenIndicatorSleep"
Description: "Childrens sleep observation, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#73f981f8-455a-4158-b435-7c6d83ab84da //	Søvn
* valueCodeableConcept.coding from SleepCodes (required)

Instance: RikkeSleep2mth
InstanceOf: klgateway-children-sleep
Usage: #example
Title: "RikkeSleep2mth"
Description: "Rikkes søvn ved 2mrd"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding[TempCode] = Tempcodes#73f981f8-455a-4158-b435-7c6d83ab84da "Søvn"
* valueCodeableConcept = Tempcodes#b07eec60-941d-484d-8c2a-aeaa2ba798bf "Søvn med normale variationer" 
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z

Profile: KLGatewayChildrenIndicatorMotorFunction
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-motor-function
Title: "KLGatewayChildrenIndicatorMotorFunction"
Description: "Childrens motor function, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#e04f2ca1-888a-4671-a97a-371b525cd2a3 //	Motorik
* valueCodeableConcept.coding from MotorFunctionCodes (required)

Instance: RikkeMotorFunction2mth
InstanceOf: klgateway-children-motor-function
Usage: #example
Title: "RikkeMotorFunction2mth"
Description: "Rikkes motorik ved 2mrd"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding[TempCode] = Tempcodes#e04f2ca1-888a-4671-a97a-371b525cd2a3 "Motorik"
* valueCodeableConcept = Tempcodes#936a0163-08eb-4fdb-bf0c-bcf5bc7cb3f6 "Få tegn på udfordret motorik"
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z

Profile: KLGatewayChildrenIndicatorNutrition
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-nutrition
Title: "KLGatewayChildrenIndicatorNutrition"
Description: "Childrens nutrition, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 //	Ernæring
* valueCodeableConcept.coding from NutritionCodes (required)

Profile: KLGatewayChildrenIndicatorPhysicalActivity
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-physical-activity
Title: "KLGatewayChildrenIndicatorPhysicalActivity"
Description: "Childrens physical activity, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#b331fe02-a781-4abd-b6db-9331d6a69b15 //	Fysisk aktivitet
* valueCodeableConcept.coding from PhysicalActivityCodes (required)

Profile: KLGatewayChildrenIndicatorHearing
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-hearing
Title: "KLGatewayChildrenIndicatorHearing"
Description: "Childrens hearing, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#a22c4b53-b622-4394-ba13-910a7b0d7b0d //	Hørelse
* valueCodeableConcept.coding from HearingCodes (required)

Profile: KLGatewayChildrenIndicatorSight
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-sight
Title: "KLGatewayChildrenIndicatorSight"
Description: "Childrens sight, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#01fddd46-ed7c-423d-b191-ffdd977dd61e //"Syn"
* valueCodeableConcept.coding from SightCodes (required)

Profile: KLGatewayChildrenIndicatorPassiveSmoking
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-passive-smoking
Title: "KLGatewayChildrenIndicatorPassiveSmoking"
Description: "Children's passive smoking, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#28972d4b-fea3-42ec-b2a5-e2a26f79b14d "Passiv rygning"
* valueCodeableConcept.coding from PassiveSmokingCodes (required)

Profile: KLGatewayChildrenIndicatorNicotine
Parent: KLGatewayChildrenIndicator
Id: klgateway-children-nicotine
Title: "KLGatewayChildrenIndicatorNicotine"
Description: "Children's use of nicotine, that inherits from Indicator"
* code.coding[TempCode] = Tempcodes#76891f7b-cf49-4cb2-88d6-728a509eb75d "Brug af nikotin"
* valueCodeableConcept.coding from NicotineCodes (required)