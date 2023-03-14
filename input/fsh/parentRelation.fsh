Profile: KLGatewayChildrenRelatedParent
Parent: RelatedPerson
Id: klgateway-children-related-parent
Title: "ParentRelation"
Description: "Profile for describing the relationship between the child, and the parents, guardians or caregivers who are also relevant for the journal"
* patient only Reference(klgateway-children-citizen)
* patient ^type.aggregation = #bundled
* relationship from ParentTypes (required)
* identifier 0..0
* active 0..0
* name 0..0
* telecom 0..0
* gender 0..0
* birthDate 0..0
* address 0..0
* photo 0..0
* period 0..0
* communication 0..0