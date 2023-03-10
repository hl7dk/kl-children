Profile: KLGatewayChildrenCitizen
Parent: dk-core-patient
Id: klgateway-children-citizen
Title: "CareCitizen"
Description: "Administrative information about a citizen receiving care or care related services."
* identifier 1..1
* identifier only dk-core-cpr-identifier
* active ..0
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
* link ..1
* link MS
* link.other only Reference(klgateway-children-related-parent)
* link.other ^type.aggregation = #bundled


//Danish descriptions
* identifier ^short = "[DK] borgers cpr-nummer"
* managingOrganization ^short = "[DK] journalførende organisation"
* link ^short = "[DK] forældrerelation"
