Profile: KLGatewayChildrenMentalState
Parent: Observation
Id: klgateway-children-mental-state
Title: "KLGatewayChildrenMentalState"
Description: "Profile used to document mental state in the children database"
//Constraints
* code from MentalStateObservablesChildren (required)
* subject 1..1
* subject only Reference(klgateway-children-citizen)
* subject ^type.aggregation = #bundled
* encounter only Reference(klgateway-children-encounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept from MentalStateResultsChildren (required)
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
* dataAbsentReason ^short = "[DK] mentalStatusMangler"
* code ^short = "[DK] mentalStatusKode"
* value[x] ^short = "[DK] mentalStatusResultat"
* subject ^short = "[DK] mentalStatusSubjekt"
* encounter ^short = "[DK] mentalStatusKontakt"
* effective[x] ^short = "[DK] mentalStatusTid"
* status ^short = "[DK] mentalStatusStatus"

Instance: LarsmentalStateObservation
InstanceOf: klgateway-children-mental-state
Usage: #example
Title: "LarsMentalState"
Description: "Lars egenvurderede generelle trivsel ved indskolingsundersøgelsen"
* subject = Reference(Lars)
* encounter = Reference(SchoolStartEncounter)
* code.coding = $SCT#285854004 //|Emotion (observable entity)|
* valueCodeableConcept = $FBOE#6bea1014-8e30-40e7-9274-2b02376c0b1b "For det meste glad"
* status = #final
* effectiveDateTime = 2021-10-21T10:45:00.000Z