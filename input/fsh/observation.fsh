Profile: KLGatewayChildrenObservation
Parent: Observation
Id: klgateway-children-observation
Title: "KLGatewayChildrenObservation"
Description: "Observation profile used in the children database"
//Constraints
* code from ObservationSCTChildren (required)
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* valueQuantity.code from ObservationUnitsChildren (required)
* valueQuantity.system = $UCUM
* valueCodeableConcept from ObservationResultsChildren (required)
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
* dataAbsentReason ^short = "[DK] ObservationMangler"
* code ^short = "[DK] ObservationsKode"
* value[x] ^short = "[DK] ObservationsResultat"
* subject ^short = "[DK] Observationssubjekt"
* encounter ^short = "[DK] Observationskontakt"
* effective[x] ^short = "[DK] Observationstid" //Behøver ikke både kontakt og tid.
* status ^short = "[DK] ObservationsStatus"
