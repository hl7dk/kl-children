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
* code.coding[SNOMEDCT] = $SCT#363788007 // "Clinical history/examination observable"
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding from ExamResults
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

Instance: LarsMentalStateObservation
InstanceOf: klgateway-children-exam-result
Usage: #example
Title: "LarsMentalState"
Description: "Lars' egenvurderede generelle trivsel ved indskolingsundersøgelsen"
* subject = Reference(Lars)
* encounter = Reference(SchoolStartEncounter)
* code.coding[SNOMEDCT] = $SCT#363788007 // "Clinical history/examination observable"
* valueCodeableConcept = $FBOE#6bea1014-8e30-40e7-9274-2b02376c0b1b "For det meste glad"
* status = #final
* effectiveDateTime = 2021-10-21T10:45:00.000Z

Instance: LarsIncontinenceObservation
InstanceOf: klgateway-children-exam-result
Usage: #example
Title: "LarsIncontinenceObservation"
Description: "Lars' unrininkontinens ved indskolingsundersøgelsen"
* subject = Reference(Lars)
* encounter = Reference(SchoolStartEncounter)
* code.coding[SNOMEDCT] = $SCT#363788007 // "Clinical history/examination observable"
* valueCodeableConcept = Tempcodes#54f42eb5-18f9-4e82-98e0-1c83988189b9 "Naturininkontinens"
* status = #final
* effectiveDateTime = 2021-10-21T10:45:00.000Z