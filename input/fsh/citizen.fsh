Profile: KLGatewayChildrenCitizen
Parent: dk-core-patient
Id: klgateway-children-citizen
Title: "KLGatewayChildrenCitizen"
Description: "Administrative information about a citizen receiving care or care related services."
* identifier 1..1
* identifier[x-ecpr] 0..0
* identifier[d-ecpr] 0..0
* identifier[cpr] 1..1
* active ..1
* name[official] 0..0
* name ..0
* telecom ..0
* gender ..0
* birthDate ..0
* deceased[x] ..0
* address ..0
* maritalStatus ..0
* multipleBirth[x] ..0
* photo ..0
* contact ..0
* communication ..0
* generalPractitioner[referencedSORUnit] 0..0
* generalPractitioner ..0
* managingOrganization 1..1
* managingOrganization.reference ..0
* managingOrganization.type ..0
* managingOrganization.identifier 1..1
* managingOrganization.identifier only dk-core-sor-identifier
* managingOrganization.display ..0
* link ..*
* link MS
* link.type = http://hl7.org/fhir/link-type#seealso
* link.other only Reference(klgateway-children-related-parent)
* link.other ^type.aggregation = #bundled

//Danish descriptions
* identifier ^short = "[DK] cpr"
* managingOrganization ^short = "[DK] journalførendeOrganisation"
* link ^short = "[DK] erSammePersonSom"
* active ^short = "[DK] harAktivJournal" 

Instance: Rikke
InstanceOf: klgateway-children-citizen
Description: "Barnet Rikke"
Usage: #example
* identifier.use = #official
* identifier.value = "0505209996"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* active = true
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"

Instance: Lars
InstanceOf: klgateway-children-citizen
Description: "Barnet Lars"
Usage: #example
* identifier.use = #official
* identifier.value = "0505159995"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"


Instance: Kirsten
InstanceOf: klgateway-children-citizen
Description: "Borger, Kirsten"
Usage: #example
* identifier.use = #official
* identifier.value = "2911829996"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"
* link.type = http://hl7.org/fhir/link-type#seealso
* link.other = Reference(RikkesParent)