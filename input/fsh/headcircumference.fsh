Profile: KLGatewayChildrenHeadCircum
Parent: http://hl7.org/fhir/StructureDefinition/headcircum
Id: klgateway-children-headcircum
Title: "KLGatewayChildrenHeadCircumference"
Description: "Head circumference profile used in Danish Municipalities, derived from HL7 standard profile"
//Constraints
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from HeadCircumSCTobservablesChildren (extensible)
* code.coding[snomedSlice].system = $SCT
* valueQuantity.code = #cm
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* effective[x] only dateTime
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

//Short Danish descriptions
* category ^short = "[DK] hovedomkredsKategori"
* dataAbsentReason ^short = "[DK] hovedomkredsMangler"
* code ^short = "[DK] hovedomkredsKode"
* valueQuantity.value ^short = "[DK] hovedomkredsResultat"
* valueQuantity.code ^short = "[DK] hovedomkredsEnhed"
* valueQuantity.system ^short = "[DK] hovedomkredsEnhed"
* subject ^short = "[DK] hovedomkredsSubjekt"
* encounter ^short = "[DK] hovedomkredsKontakt"
* effectiveDateTime ^short = "[DK] hovedomkredsTid"
* status ^short = "[DK] hovedomkredsStatus"


