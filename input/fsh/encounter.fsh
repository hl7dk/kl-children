Profile: KLGatewayChildrenEncounter
Parent: Encounter
Id: klgateway-children-encounter
Title: "140CareEncounter"
Description: "Encounter for health prevention and need-based visits from childrens nurses"
* identifier ..0
* statusHistory ..0
* class = $v3-ActCode#HH
* class.version ..0
* class.display ..0
* class.userSelected ..0
* classHistory ..0
* type from EncounterTypes (required)
* type.coding 1..
* type.coding.version ..0
* type.coding.display ..0
* type.coding.userSelected ..0
* type.text ..0
* serviceType ..0
* priority ..0
* subject 1..1
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* episodeOfCare ..0
* basedOn ..0
* participant ..0
* appointment ..0
* period 1..1
* period.start 1..1
* period.end ..1
* length ..0
* reasonCode ..0
* reasonReference ..0
* diagnosis ..0
* account ..0
* hospitalization ..0
* location ..0
* serviceProvider ..0
* partOf ..0

//Danish descriptions
* status ^short = "[DK] kontaktstatus"
* type.coding ^short = "[DK] kontakttype"
* period.start ^short = "[DK] kontaktstart"
* period.end ^short = "[DK] kontaktslut"
* subject ^short = "[DK] kontaktsubjekt"
* class ^short = "[DK] kontaktklasse"