Profile: KLGatewayChildrenEncounter
Parent: Encounter
Id: klgateway-children-encounter
Title: "KLGatewayChildrenEncounter"
Description: "Encounter for health prevention and need-based visits from childrens nurses"
* identifier ..0
* statusHistory ..0
* class.version ..0
* class.display ..0
* class.userSelected ..0
* classHistory ..0
* type from EncounterTypes (required)
* type.coding 1..
* type.coding.version ..0
* type.coding.userSelected ..0
* type.text ..0
* serviceType ..0
* priority ..0
* subject 1..1
* subject only Reference(klgateway-children-citizen)
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
* extension contains
   BasedOnInterventionExtension named basedOnIntervention 0..*
* extension[basedOnIntervention].valueReference ^type.aggregation = #bundled

//Danish descriptions
* status ^short = "[DK] kontaktstatus"
* type.coding ^short = "[DK] kontakttype"
* period.start ^short = "[DK] kontaktstart"
* period.end ^short = "[DK] kontaktslut"
* subject ^short = "[DK] kontaktsubjekt"
* class ^short = "[DK] kontaktklasse"
* extension[basedOnIntervention] ^short = "[DK] kontaktBaseretPå"

Instance: 2nd1mthEncounter
InstanceOf: klgateway-children-encounter
Title: "Andet besøg i barnets første levemåned ved Rikke"
Usage: #example
Description: "Kontakt, hvor der leveres andet besøg i barnets første levemåned til Rikke og hendes familie"
* type = $FBOE#563c4174-f451-4c87-8db8-8d5472ca7ff6 "Andet besøg i barnets første levemåned"
* period.start = 2020-06-01
* status = $EncounterStatus#finished
* subject = Reference(Rikke)
* class = $V3ACTCODES#HH

Instance: 2mthEncounter
InstanceOf: klgateway-children-encounter
Title: "2 måneders besøg ved Rikke"
Usage: #example
Description: "Kontakt, hvor der leveres besøg ved det ca. 2 måneder gamle barn til Rikke og hendes familie"
* type = $FBOE#51f30d1c-d60e-4e3e-ac22-ec9712ea962d "Besøg ved det ca. 2 måneder gamle barn"
* period.start = 2020-07-07T12:45:00.000Z
* status = $EncounterStatus#finished
* subject = Reference(Rikke)
* class = $V3ACTCODES#HH

Instance: 10mthEncounter
InstanceOf: klgateway-children-encounter
Title: "10 måneders besøg ved Rikke"
Usage: #example
Description: "Kontakt, hvor der leveres besøg ved det 8-11 måneder gamle barn til Rikke og hendes familie"
* type = $FBOE#3f3e6489-31bd-44cf-9920-3c632868feb7 "Besøg ved det 8-11 måneder gamle barn"
* period.start = 2021-03-09T10:15:00.000Z
* status = $EncounterStatus#finished
* subject = Reference(Rikke)
* class = $V3ACTCODES#HH

Instance: SchoolStartEncounter
InstanceOf: klgateway-children-encounter
Title: "Indskolingsundersøgelse Lars"
Usage: #example
Description: "Kontakt, der er Lars' indskolingsundersøgelse"
* type = $FBOE#c06ed6f1-be9d-460e-a45e-34821bcbd533 "Indskolingsundersøgelse"
* period.start = 2021-10-21T10:45:00.000Z
* status = $EncounterStatus#finished
* subject = Reference(Lars)
* class = $V3ACTCODES#AMB