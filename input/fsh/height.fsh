Profile: KLGatewayChildrenBodyHeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyheight
Id: klgateway-children-bodyheight
Title: "KLGatewayChildrenBodyHeight"
Description: "Body height profile used in Danish Municipalities, derived from HL7 standard profile"
//Constraints
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from BodyheightSCTobservablesChildren (extensible)
* code.coding[snomedSlice].system = $SCT
* value[x] only Quantity
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
* category ^short = "[DK] højdeKategori"
* dataAbsentReason ^short = "[DK] højdeMangler"
* code ^short = "[DK] højdeKode"
* valueQuantity.value ^short = "[DK] højdeResultat"
* valueQuantity.code ^short = "[DK] højdeEnhed"
* valueQuantity.system ^short = "[DK] højdeEnhed"
* subject ^short = "[DK] højdeSubjekt"
* encounter ^short = "[DK] højdeKontakt"
* effectiveDateTime ^short = "[DK] højdeTid" //Behøver ikke både kontakt og tid.
* status ^short = "[DK] højdeStatus"
* obeys obs-1
* obeys obs-2


Invariant: obs-1
Description: "If height is given as a decimal point number, an error is returned"
Severity: #error
Expression: "valueQuantity.value.toString().matches('^[0-9]+$')"

Invariant: obs-2
Description: "If the value is not given, then explain why using dataAbsentReason"
Severity: #error
Expression: "value.empty() implies dataAbsentReason.exists()"


Instance: RikkeBodyHeight
InstanceOf: klgateway-children-bodyheight
Usage: #example
Title: "RikkeBodyHeight"
Description: "Rikkes kropslængde"
* subject = Reference(Rikke)
* encounter = Reference(2nd1mthEncounter)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[snomedSlice] = $SCT#248334005
* code.coding[BodyHeightCode] = $LOINC#8302-2
* valueQuantity.value = 57
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2020-06-01