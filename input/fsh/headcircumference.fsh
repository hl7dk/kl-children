Profile: KLGatewayChildrenHeadCircum
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-basic-observation
Id: klgateway-children-headcircum
Title: "KLGatewayChildrenHeadCircumference"
Description: "Head circumference profile used in Danish Municipalities, derived from HL7 standard profile"
//Constraints
* code.coding[LOINC] = $LOINC#9843-4 //"Head circumference"
* code.coding[SNOMEDCT] from HeadCircumSCTobservablesChildren (extensible)
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

Instance: RikkeHeadCircum
InstanceOf: klgateway-children-headcircum
Usage: #example
Title: "RikkeHeadCircum"
Description: "Rikkes hovedomkreds"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#363812007 "Head circumference"
* code.coding[LOINC] = $LOINC#9843-4
* valueQuantity.value = 38.3
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2020-07-07T12:45:00.000Z