Profile: KLGatewayChildrenLocation
Parent: Location
Id: klgateway-children-location
Title: "KLGatewayChildrenLocation"
Description: "Profile representing a location, in this implementation guide only used to represent a school"

* identifier 1..1
* identifier.system 1..1
* identifier.system = "https://viden.stil.dk/display/OFFINSTREG/Institutionsregisteret" (exactly)
* identifier.value 1..1
* identifier.type 0..0
* identifier.use 0..0
* identifier.assigner 0..0
* identifier.period 0..0
* status 0..1
* operationalStatus 0..0
* name 0..0
* alias 0..0
* description 0..0
* mode 0..0
* type 1..1
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SCHOOL
* telecom 0..0
* address 0..0
* physicalType 0..0
* position 0..0
* managingOrganization 0..0
* partOf 0..0
* hoursOfOperation 0..0
* availabilityExceptions 0..0
* endpoint 0..0

//Danish descriptions
* identifier ^short = "[DK] Lokationsid"
* type ^short = "[DK] Lokationstype"
* status ^short = "[DK] Lokationsstatus"

Instance: SchoolHolbaek
InstanceOf: klgateway-children-location
Usage: #example
Title: "SchoolHolbaek"
Description: "Skole i Holbæk"
* identifier.system = "https://viden.stil.dk/display/OFFINSTREG/Institutionsregisteret"
* identifier.value = "280295"
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SCHOOL