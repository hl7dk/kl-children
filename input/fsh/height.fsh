Profile: KLGatewayChildrenBodyHeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyheight
Id: klgateway-children-bodyheight
Title: "Body height"
Description: "Body height profile used in Danish Municipalities, derived from HL7 standard profile"
//Constraints
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from BodyheightSCTobservablesChildren (extensible)
* code.coding[snomedSlice].system = $SCT
* valueQuantity.code = #cm
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* effectiv[x]e only dateTime
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
* category ^short = "[DK] Kategori"
* dataAbsentReason ^short = "[DK] HøjdeMangler"
* code ^short = "[DK] HøjdeKode"
* valueQuantity.value ^short = "[DK] HøjdeResultat"
* valueQuantity.code ^short = "[DK] HøjdeEnhed"
* valueQuantity.system ^short = "[DK] HøjdeEnhed"
* subject ^short = "[DK] Højdesubjekt"
* encounter ^short = "[DK] Højdekontakt"
* effectiveDateTime ^short = "[DK] Højdetid" //Behøver ikke både kontakt og tid.
* status ^short = "[DK] HøjdeStatus"

Instance: MaleneBodyHeight
InstanceOf: klgateway-children-bodyheight
Usage: #example
Title: "MaleneBodyHeight"
Description: "Malenes kropslængde"
* subject = Reference(Malene)
* encounter = Reference(2mthEncounter)
* category.coding.system="http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code= #vital-signs
* code.coding[snomedSlice] = $SCT#248334005
* code.coding[BodyHeightCode] = $LOINC#8302-2
* valueQuantity.value = 62
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2019-01-09T12:45:00.000Z