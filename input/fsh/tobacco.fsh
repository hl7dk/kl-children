Profile: KLGatewayChildrenTobaccoObservation
Parent: Observation
Id: klgateway-children-tobacco-observation
Title: "KLGatewayChildrenTobaccoObservation"
Description: "Tobacco observation profile used in the children database"
//Constraints
* code from TobaccoObservablesChildren (required)
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept from TobaccoResultsChildren (required)
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
* dataAbsentReason ^short = "[DK] tobaksobservationMangler"
* code ^short = "[DK] tobaksobservationsKode"
* value[x] ^short = "[DK] tobaksobservationsResultat"
* subject ^short = "[DK] tobaksobservationSubjekt"
* encounter ^short = "[DK] tobaksobservationKontakt"
* effective[x] ^short = "[DK] tobaksobservationTid" //Behøver ikke både kontakt og tid.
* status ^short = "[DK] tobaksobservationStatus"
