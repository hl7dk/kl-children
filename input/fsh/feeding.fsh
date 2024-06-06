Profile: KLGatewayChildrenFeedingObservation
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-observation
Id: klgateway-children-feeding-observation
Title: "KLGatewayChildrenFeedingObservation"
Description: "Feeding observation profile used in the children database"
//Constraints
* code.coding 2..2
* code.coding ^slicing.rules = #closed
* code.coding contains
    FBOECode 1..1
* code.coding[FBOECode].system = $FBOE
* code.coding[LOINC] 0..0
* code.coding[NPU] 0..0
* code.coding[IEEE] 0..0
* code.coding[MedCom] 0..0
* code.coding[SKS] 0..0
* code.coding[SNOMEDCT] 1..1
* code.coding[FBOECode] = $FBOE#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 //Ernæring
* code.coding[SNOMEDCT] = $SCT#169740003
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* effective[x] only Period or dateTime
* effectivePeriod.start 1..1
* effectivePeriod.end 0..1
* effectiveDateTime 0..1
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
* obeys obs-2
// * obeys feed-1


//Short Danish descriptions
* dataAbsentReason ^short = "[DK] madningsobservationMangler"
* code ^short = "[DK] madningsobservationsKode"
* value[x] ^short = "[DK] madningsobservationsResultat"
* subject ^short = "[DK] madningsobservationSubjekt"
* encounter ^short = "[DK] madningsobservationKontakt"
* effective[x] ^short = "[DK] madningsobservationTid" 
* status ^short = "[DK] madningsobservationStatus"


// Invariant: feed-1
// Description: "If code is'breastfeeding stopped', effective should be given as a dateTime"
// Severity: #error
// Expression: "value.coding.code = '169746009' implies (effective.start.empty())"

// Invariant: feed-2
// Description: "If code is 'Exclusively breastfed' or 'Breastfeeding with supplement' effective[x] should be given as a period"
// Severity: #error
// Expression: "((value.coding.code = '169743001') or (value.coding.code = '1145307003')) implies (effective.start.exists())"

// https://hl7.github.io/fhirpath.js/


Instance: RikkeFeedingObservationPeriod
InstanceOf: klgateway-children-feeding-observation
Usage: #example
Title: "RikkeFeedingObservationPeriod"
Description: "Rikkes periode for fuldamning"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding[FBOECode] = $FBOE#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
* valueCodeableConcept = $FBOE#77a008dd-21cc-452f-a1ee-ac8d025b7817 "Fuldamning, inklusiv modermælk på flaske"
* status = #final
* effectivePeriod.start = 2020-05-05T00:00:00.000Z
* effectivePeriod.end = 2020-06-28T00:00:00.000Z

Instance: RikkeFeedingObservationStatus
InstanceOf: klgateway-children-feeding-observation
Usage: #example
Title: "RikkeFeedingObservationStatus"
Description: "Rikkes status på madning ved 2 mrd"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding[FBOECode] = $FBOE#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
* valueCodeableConcept = $FBOE#3edc905c-2830-442a-98cc-463cc3701dd1 "Ammes som supplement til anden kost"
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z

Instance: RikkeFeedingObservationNewPeriod
InstanceOf: klgateway-children-feeding-observation
Usage: #example
Title: "RikkeFeedingObservationNewPeriod"
Description: "Rikkes periode-start for ammes som supplement til anden kost"
* subject = Reference(Rikke)
* encounter = Reference(2mthEncounter)
* code.coding[FBOECode] = $FBOE#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
* valueCodeableConcept = $FBOE#3edc905c-2830-442a-98cc-463cc3701dd1 "Ammes som supplement til anden kost"
* status = #final
* effectivePeriod.start = 2020-06-28T00:00:00.000Z

Instance: RikkeFeedingObservationStatus10mth
InstanceOf: klgateway-children-feeding-observation
Usage: #example
Title: "RikkeFeedingObservationStatus10mth"
Description: "Rikkes status, ved 10 måneder, udelukkende status fordi perioden er startet tidligere, og ikke er afsluttet"
* subject = Reference(Rikke)
* encounter = Reference(10mthEncounter)
* code.coding[FBOECode] = $FBOE#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
* valueCodeableConcept = $FBOE#dfab6d07-b1b6-4210-ac8a-b8a0d095c8ab "Modermælkserstatning og/eller overgangskost"
* status = #final
* effectiveDateTime = 2021-02-02T00:00:00.000Z