Profile: KLGatewayChildrenPlannedIntervention
Parent: CarePlan
Id: klgateway-children-intervention
Title: "KLGatewayChildrenIntervention"
Description: "Profile representing interventions in the children database"


//Requirements
* status ^definition = "Shall be either unknown, entered-in-error, or the status of the intervention at the time of reporting"
* intent = #plan
* activity.detail.status ^definition = "Shall be either unknown, or cancelled, or the activity status of the intervention at the time of reporting"
* basedOn 0..0
* subject only Reference(klgateway-children-citizen) //borger
* subject ^type.aggregation = #bundled
* period 1..1
* period.start 1..1 //Bevillingsdato
//period.end er mulig men ikke obligatorisk
* activity 1..1
* activity.outcomeReference only Reference(klgateway-children-encounter) //kontakter
* activity.outcomeReference ^type.aggregation = #bundled
* activity.reference 0..0
* activity.detail 1.. 
* activity.detail.code 1..1 //Indsatskoder niveau 2 og 3
* activity.detail.code.coding 1..1
* activity.detail.code.text 0..0
* activity.detail.code.coding.system = Canonical(Tempcodes) //$FBOE
* activity.detail.code.coding from KLHealthNurseInterventions
* activity.detail.reasonCode ..*
* activity.detail.reasonCode.coding from KLHealthNurseConditions
* activity.detail.scheduled[x] 0..0
* activity.detail.reasonReference 0..0

// relation mellem tilstand og indsats
//* activity.detail.reasonReference only Reference(klgateway-children-condition)
//* activity.detail.reasonReference ^definition = "Reason for this intervention. Must contain all conditions known to be addressed by this intervention"
//* activity.detail.reasonReference ^type.aggregation = #bundled

//0..0 kardinaliteter
* identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* replaces ..0
* partOf ..0
* category ..0
* title ..0
* description ..0
* encounter ..0
* created ..0
* author ..0
* contributor ..0
* careTeam 0..0
* addresses ..0
* supportingInfo ..0
* goal ..0
* activity.outcomeCodeableConcept ..0
* activity.progress ..0
* activity.detail.kind ..0
* activity.detail.instantiatesCanonical ..0
* activity.detail.instantiatesUri ..0
* activity.detail.goal ..0
* activity.detail.doNotPerform ..0
* activity.detail.statusReason 0..0
* activity.detail.location ..0
* activity.detail.product[x] ..0
* activity.detail.dailyAmount ..0
* activity.detail.quantity ..0
* activity.detail.description ..0
* activity.outcomeReference 0..0
* note ..0

//Danish descriptions
* activity.detail.code.coding ^short = "[DK] indsatsskode"
* period.start ^short = "[DK] indsatsbevillingstid"
* period.end ^short = "[DK] indsatsafslutningstid"
* status ^short = "[DK] indsatsstatus"
* intent ^short = "[DK] indsatshensigt"
* subject ^short = "[DK] indsatssubjekt"
* activity.detail.reasonCode.coding ^short = "[DK] indsatsbegrundelse"
* activity.detail.status ^short = "[DK] indsatsAktivitetsstatus"