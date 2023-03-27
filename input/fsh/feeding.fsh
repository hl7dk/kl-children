Profile: KLGatewayChildrenFeedingObservation
Parent: Observation
Id: klgateway-children-feeding-observation
Title: "KLGatewayChildrenFeedingObservation"
Description: "Feeding observation profile used in the children database"
//Constraints
* code from FeedingObservablesChildren (required)
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* effective[x] only Period or dateTime
* effectivePeriod.start 1..1
* effectivePeriod.end 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from FeedingResultsChildren (required)
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
* obeys feed-1
* obeys feed-2

//Short Danish descriptions
* dataAbsentReason ^short = "[DK] madningsobservationMangler"
* code ^short = "[DK] madningsobservationsKode"
* value[x] ^short = "[DK] madningsobservationsResultat"
* subject ^short = "[DK] madningsobservationSubjekt"
* encounter ^short = "[DK] madningsobservationKontakt"
* effective[x] ^short = "[DK] madningsobservationTid" //Behøver ikke både kontakt og tid.
* status ^short = "[DK] madningsobservationStatus"


Invariant: feed-1
Description: "If code is'breastfeeding stopped', effective should be given as a dateTime"
Severity: #error
Expression: "valueCodeableConcept.coding.code = '169746009' implies (effectiveDateTime.exists())"

Invariant: feed-2
Description: "If code is 'Exclusively breastfed' or 'Breastfeeding with supplement' effective[x] should be given as a periode"
Severity: #error
Expression: "((valueCodeableConcept.coding.code = '169743001') or (valueCodeableConcept.coding.code = '1145307003')) implies (effectivePeriod.exists())"

//https://hl7.github.io/fhirpath.js/

Instance: RikkeFeedingObservationError
InstanceOf: klgateway-children-feeding-observation
Usage: #example
Title: "RikkeBodyFeedingObservationError"
Description: "Rikkes ammestatus, med forkert angivelse af tid giver feed-2 fejl"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding = $SCT#169740003
* valueCodeableConcept = $SCT#1145307003 //|Exclusively breastfed| (EffectivePeriod)
* status = #final
* effectiveDateTime = 2020-07-07T12:45:00.000Z

Instance: RikkeFeedingObservation
InstanceOf: klgateway-children-feeding-observation
Usage: #example
Title: "RikkeFeedingObservation"
Description: "Rikkes ammestatus, med rigtig angivelse af tid"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding = $SCT#169740003
* valueCodeableConcept = $SCT#1145307003 //|Exclusively breastfed| (EffectivePeriod)
* status = #final
* effectivePeriod.start = 2020-05-05T00:00:00.000Z
* effectivePeriod.end = 2020-07-07T00:00:00.000Z

Instance: RikkeFeedingObservation2
InstanceOf: klgateway-children-feeding-observation2
Usage: #example
Title: "RikkeFeedingObservation2"
Description: "Rikkes ammestatus, ved stop af amning"
* subject = Reference(Rikke)
* encounter = Reference(10mthEncounter)
* code.coding = $SCT#169740003
* valueCodeableConcept = $SCT#169746009  //|Exclusively breastfed| (EffectivePeriod)
* status = #final
* effectiveDateTime = 2021-02-02T00:00:00.000Z