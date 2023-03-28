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

Instance: RikkeIndicatorSK
InstanceOf: klgateway-children-indicator
Usage: #example
Title: "RikkeIndicatorSK"
Description: "Rikkes samvær og kontakt indikator ved 2mrd"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding = Tempcodes#bee30064-8436-4762-83ed-e47d65f23fc6 "Observation af samvær, kontakt, forældre-barn relation ifm. forebyggelsesindsats for småbørn" 
* valueCodeableConcept = Tempcodes#96e3eda6-3eb7-4fbb-9850-fc6dfafadb4a "Der er konstateret et problem, og lavet en bemærkning" 
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z

Instance: KirstenIndicatorMS
InstanceOf: klgateway-children-indicator
Usage: #example
Title: "KirstenIndicatorMS"
Description: "Kirstens psykiske tilstand ved 2mrd"
* subject = Reference(Kirsten)
* code.coding = Tempcodes#2c39af9f-8e45-4c88-962f-e7a9e2cd31b6 "Observation af psykisk tilstand når man er blevet forælder ifm. forebyggelsesindsats for småbørn" 
* valueCodeableConcept = Tempcodes#96e3eda6-3eb7-4fbb-9850-fc6dfafadb4a "Der er konstateret et problem, og lavet en bemærkning" 
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z