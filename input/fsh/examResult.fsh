Profile: KLGatewayChildrenExamResult
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-observation
Id: klgateway-children-exam-result
Title: "KLGatewayExamResult"
Description: "Observation used to express qualitative examination results to be reported to the children database"
//Constraints
* code.coding 1..1
* code.coding ^slicing.rules = #closed
* code.coding[LOINC] 0..0
* code.coding[NPU] 0..0
* code.coding[IEEE] 0..0
* code.coding[MedCom] 0..0
* code.coding[SKS] 0..0
* code.coding[SNOMEDCT] = $SCT#363788007
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
* valueCodeableConcept.coding[FBOECode] from ExamResults
* valueCodeableConcept.coding[SNOMEDCT] from ExamResultsSCT
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
* dataAbsentReason 0..0

//Short Danish descriptions
* code ^short = "[DK] undersøgelsesKode"
* value[x] ^short = "[DK] UndersøgelsesResultat"
* subject ^short = "[DK] Undersøgelsessubjekt"
* encounter ^short = "[DK] Undersøgelseskontakt"
* effectiveDateTime ^short = "[DK] Undersøgelsestid" //Behøver ikke både kontakt og tid.
* status ^short = "[DK] UndersøgelsesStatus"