Profile: KLGatewayChildrenBodyWeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyweight
Id: klgateway-children-bodyweight
Title: "KLGatewayChildrenBodyWeight"
Description: "Profile of HL7 body weight profile used in Danish Municipalities"
//SNOMED on FHIR recommendation
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from BodyweightSCTobservablesChildren (extensible)
* code.coding[snomedSlice].system = $SCT
* valueQuantity.code = #g
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

* category ^short = "[DK] vægtKategori"
* dataAbsentReason ^short = "[DK] vægtMangler"
* code ^short = "[DK] vægtKode"
* valueQuantity.value ^short = "[DK] vægtResultat"
* valueQuantity.code ^short = "[DK] vægtEnhed"
* valueQuantity.system ^short = "[DK] vægtEnhed"
* subject ^short = "[DK] vægtsubjekt"
* encounter ^short = "[DK] vægtkontakt"
* effectiveDateTime ^short = "[DK] vægttid"
* status ^short = "[DK] vægtStatus"


Instance: RikkeBodyWeight
InstanceOf: klgateway-children-bodyweight
Usage: #example
Title: "RikkeBodyWeight"
Description: "Rikkes vægt"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[snomedSlice] = $SCT#276885007
* code.coding[BodyWeightCode] = $LOINC#29463-7
* valueQuantity.value = 4300
* valueQuantity.unit = "g"
* valueQuantity.system = $UCUM
* valueQuantity.code = #g
* status = #final
* effectiveDateTime = 2020-07-07T12:45:00.000Z