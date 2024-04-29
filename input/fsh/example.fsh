Instance: b9479825-6be1-4fa1-a2ae-74fe67014caa
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-1"
Usage: #example
* type = #collection
* timestamp = 2022-06-02T23:25:12Z

* entry[+].fullUrl = Canonical(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8)
* entry[=].resource = fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8

* entry[+].fullUrl = Canonical(e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a)
* entry[=].resource = e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a

* entry[+].fullUrl = Canonical(dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6)
* entry[=].resource = dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6

// * entry[+].fullUrl = Canonical()
// * entry[=].resource = 

// * entry[+].fullUrl = Canonical()
// * entry[=].resource = 

// * entry[+].fullUrl = Canonical()
// * entry[=].resource = 

Instance: fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8
InstanceOf: klgateway-children-citizen
Description: "Borger, Kirsten Test Berggren, fra MedCom test-cprnumre. Holbæk kommune er journalførende organisation."
Usage: #inline
* identifier.use = #official
* identifier.value = "2911829996"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "451000016003"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"

Instance: e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a
InstanceOf: klgateway-children-citizen
Description: "Borger, Knud Odvar Test Mosebryggersen, fra MedCom test-cprnumre. Holbæk kommune er journalførende organisation."
Usage: #inline
* identifier.use = #official
* identifier.value = "1502829995"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "451000016003"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"

Instance: dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6
InstanceOf: klgateway-children-encounter
Title: "Graviditetsbesøg ved Kirsten"
Usage: #inline
Description: "Kontakt, hvor der leveres graviditetsbesøg ved Kirsten og Knud"
* type = $FBOE#d3c00541-f1d3-4c43-b5fc-16e8914ca1df "Graviditetsbesøg"
* period.start = 2020-02-05
* status = $EncounterStatus#finished
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8)
* class = $V3ACTCODES#HH


