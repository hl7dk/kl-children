Profile: KLGatewayChildrenIndicator
Parent: Observation
Id: klgateway-children-indicator
Title: "KLGatewayChildrenIndicator"
Description: "Indicator profile used in the children database"
//Constraints
* code from IndicatorCodesChildren (required)
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from IndicatorResultsChildren
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

