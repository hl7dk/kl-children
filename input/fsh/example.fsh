Instance: b9479825-6be1-4fa1-a2ae-74fe67014caa
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-1"
Usage: #example
* type = #collection
* timestamp = 2020-02-05T23:25:12Z

* entry[+].fullUrl = Canonical(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8) //Kirsten
* entry[=].resource = fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8

* entry[+].fullUrl = Canonical(e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a) //Knud
* entry[=].resource = e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a

* entry[+].fullUrl = Canonical(dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6) //Graviditetsbesøg
* entry[=].resource = dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6

* entry[+].fullUrl = Canonical(5dc67553-92c1-4d1d-a714-f683f9bdfe88) //Forælders sårbarhed, Kirsten
* entry[=].resource = 5dc67553-92c1-4d1d-a714-f683f9bdfe88

* entry[+].fullUrl = Canonical(e1e03870-801d-420d-9eac-2a29de8c4134) // Forælders sårbarhed Knud
* entry[=].resource = e1e03870-801d-420d-9eac-2a29de8c4134

* entry[+].fullUrl = Canonical(722b17a4-fbd0-46e5-a58b-62f7a4b87699) // Forælders psykiske status Kirsten
* entry[=].resource = 722b17a4-fbd0-46e5-a58b-62f7a4b87699

* entry[+].fullUrl = Canonical(48b3dc28-b489-4cd1-893f-8973ed14e8f6) // Forælders psykiske status Knud
* entry[=].resource = 48b3dc28-b489-4cd1-893f-8973ed14e8f6

* entry[+].fullUrl = Canonical(8ff12f7a-4e53-4061-ba00-fe473d390471) // Forælders netværk, Kirsten
* entry[=].resource = 8ff12f7a-4e53-4061-ba00-fe473d390471

* entry[+].fullUrl = Canonical(6603abaf-1714-4052-a5ed-f8f026655177) // Forælders netværk, Knud
* entry[=].resource = 6603abaf-1714-4052-a5ed-f8f026655177

* entry[+].fullUrl = Canonical(c98626d1-e3a1-42ac-8732-d7eb63236d8c)
* entry[=].resource = c98626d1-e3a1-42ac-8732-d7eb63236d8c // Kirsten ExamResult, Traumatiske oplevelser

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

Instance: 5dc67553-92c1-4d1d-a714-f683f9bdfe88
InstanceOf: klgateway-children-parent-social-status
Title: "Forælders sårbarhed, Kirsten"
Description: "Indikator vedr. forælders sårbarhed ifm graviditetsbesøg, Kirsten"
* code.coding[TempCode] = Tempcodes#58997614-ba43-4534-90bd-10c7e76802f4 "Forælders sårbarhed"
* valueCodeableConcept.coding = Tempcodes#546e7bef-7a22-451e-971a-326fcd78a843 "Potentiel sårbarhed"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8)
* encounter = Reference(dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6)

Instance: e1e03870-801d-420d-9eac-2a29de8c4134
InstanceOf: klgateway-children-parent-social-status
Title: "Forælders sårbarhed, Knud"
Description: "Indikator vedr. forælders sårbarhed ifm graviditetsbesøg, Knud"
* code.coding[TempCode] = Tempcodes#58997614-ba43-4534-90bd-10c7e76802f4 "Forælders sårbarhed"
* valueCodeableConcept.coding = Tempcodes#57dd67d7-175a-4541-87ff-db1381c4e1d9 "Ingen sårbarhed"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z
* subject = Reference(e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a)

Instance: 722b17a4-fbd0-46e5-a58b-62f7a4b87699
InstanceOf: klgateway-children-parent-mental-status
Usage: #inline
Title: "Forælders psykiske tilstand, Kirsten"
Description: "Kirstens psykiske tilstand ved graviditetsbesøg"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8)
* code.coding[FBOECode] = $FBOE#2c39af9f-8e45-4c88-962f-e7a9e2cd31b6 "Forælders psykiske tilstand"
* valueCodeableConcept = Tempcodes#0e5db980-8c6e-4034-abab-054e0eb40935 "Forventelig psykisk reaktion"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z
* encounter = Reference(dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6)

Instance: 48b3dc28-b489-4cd1-893f-8973ed14e8f6
InstanceOf: klgateway-children-parent-mental-status
Usage: #inline
Title: "Forælders psykiske tilstand, Knud"
Description: "Knuds psykiske tilstand ved graviditetsbesøg"
* subject = Reference(e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a)
* code.coding[FBOECode] = $FBOE#2c39af9f-8e45-4c88-962f-e7a9e2cd31b6 "Forælders psykiske tilstand"
* valueCodeableConcept = Tempcodes#0e5db980-8c6e-4034-abab-054e0eb40935 "Forventelig psykisk reaktion"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z

Instance: 8ff12f7a-4e53-4061-ba00-fe473d390471
InstanceOf: klgateway-children-social-support-network
Usage: #inline
Title: "Forælders netværk, Kirsten"
Description: "Kirstens netværk ved graviditetsbesøg"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8)
* code.coding[TempCode] = Tempcodes#7e7fab2f-278a-4b14-9bc9-efc36fffcba5 "Netværk"
* valueCodeableConcept = Tempcodes#fbd9a8a5-0ed6-4e1a-9841-066ade34b071 "Godt netværk"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z
* encounter = Reference(dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6)

Instance: 6603abaf-1714-4052-a5ed-f8f026655177
InstanceOf: klgateway-children-social-support-network
Usage: #inline
Title: "Forælders netværk, Knud"
Description: "Knuds netværk ved graviditetsbesøg"
* subject = Reference(e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a)
* code.coding[TempCode] = Tempcodes#7e7fab2f-278a-4b14-9bc9-efc36fffcba5 "Netværk"
* valueCodeableConcept = Tempcodes#fbd9a8a5-0ed6-4e1a-9841-066ade34b071 "Godt netværk"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z

Instance: c98626d1-e3a1-42ac-8732-d7eb63236d8c
InstanceOf: klgateway-children-exam-result
Usage: #example
Title: "Kirstens, forælders sårbarhed nuancering, graviditetsbesøg"
Description: "Kirstens nuancering på forælders sårbarhed: Traumatiske oplevelser"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8)
* encounter = Reference(dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6)
* code.coding[SNOMEDCT] = $SCT#363788007 // "Clinical history/examination observable"
* valueCodeableConcept = Tempcodes#7acf5936-6640-44a7-af6d-b20c7607dcfe	"Traumatiske oplevelser"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z


// 2nd - a

Instance: c5b55e0e-3bc4-468a-8600-1b23617dbb58
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-2a"
Usage: #example
* type = #collection
* timestamp = 2020-05-09T23:25:12Z

* entry[+].fullUrl = Canonical(e60106e2-413e-46c5-8a3f-62d8e77ce794) //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = Canonical(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9) //Barselsbesøg
* entry[=].resource = ebaaad51-e77f-4fc1-944a-24b0ace0a9f9

* entry[+].fullUrl = Canonical(4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f) //Fundamning, periode-start
* entry[=].resource = 4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f

* entry[+].fullUrl = Canonical(23fe85c3-3ff2-4093-89aa-5051bfee9bc2) // Fuldamning, status
* entry[=].resource = 23fe85c3-3ff2-4093-89aa-5051bfee9bc2

* entry[+].fullUrl = Canonical(8779aeaa-d7ed-4450-8a5f-d685ddc15dc3) // Rikkes vægt
* entry[=].resource = 8779aeaa-d7ed-4450-8a5f-d685ddc15dc3


Instance: e60106e2-413e-46c5-8a3f-62d8e77ce794
InstanceOf: klgateway-children-citizen
Description: "Barnet Rikke Test Berggren, fra MedComs liste af test cpr-numre"
Usage: #inline
* identifier.use = #official
* identifier.value = "0505209996"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* active = true
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "451000016003"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"

Instance: ebaaad51-e77f-4fc1-944a-24b0ace0a9f9
InstanceOf: klgateway-children-encounter
Title: "Barselsbesøg ved Rikke"
Usage: #inline
Description: "Kontakt, hvor der leveres barselsbesøg ved Rikke"
* type = $FBOE#7d35a193-e808-4e77-b361-6c0d114d021f "Barselsbesøg"
* period.start = 2020-05-09
* status = $EncounterStatus#finished
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* class = $V3ACTCODES#HH

Instance: 4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f
InstanceOf: klgateway-children-feeding-observation
Usage: #example
Title: "Rikke fuldamning periodestart"
Description: "Rikke fuldamning periodestart"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9)
* code.coding[FBOECode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
* valueCodeableConcept = Tempcodes#77a008dd-21cc-452f-a1ee-ac8d025b7817 "Fuldamning, inklusiv modermælk på flaske"
* status = #final
* effectivePeriod.start = 2020-05-05T00:00:00.000Z

Instance: 23fe85c3-3ff2-4093-89aa-5051bfee9bc2
InstanceOf: klgateway-children-feeding-observation
Usage: #example
Title: "Rikkes ammestatus ved barselsbesøg, fuldammes"
Description: "Rikkes status på madning ved barselsbesøg: fuldamning"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9)
* code.coding[FBOECode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
* valueCodeableConcept = Tempcodes#77a008dd-21cc-452f-a1ee-ac8d025b7817 "Fuldamning, inklusiv modermælk på flaske"
* status = #final
* effectiveDateTime = 2020-05-09T00:00:00.000Z

Instance: 8779aeaa-d7ed-4450-8a5f-d685ddc15dc3
InstanceOf: klgateway-children-bodyweight
Usage: #example
Title: "Rikkes vægt, barselsbesøg"
Description: "Rikkes vægt, barselsbesøg"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#27113001
* code.coding[LOINC] = $LOINC#29463-7
* valueQuantity.value = 3100
* valueQuantity.unit = "g"
* valueQuantity.system = $UCUM
* valueQuantity.code = #g
* status = #final
* effectiveDateTime = 2020-05-09

//2nd - b

Instance: 74dcb49e-dd6a-4450-9fb8-85ad0e7bed38
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-2b"
Usage: #example
* type = #collection
* timestamp = 2020-05-09T23:25:12Z

* entry[+].fullUrl = Canonical(e60106e2-413e-46c5-8a3f-62d8e77ce794) //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = Canonical(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9) //Barselsbesøg
* entry[=].resource = ebaaad51-e77f-4fc1-944a-24b0ace0a9f9

* entry[+].fullUrl = Canonical(4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f) //Fundamning, periode-start
* entry[=].resource = 4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f

* entry[+].fullUrl = Canonical(23fe85c3-3ff2-4093-89aa-5051bfee9bc2) // Fuldamning, status
* entry[=].resource = 23fe85c3-3ff2-4093-89aa-5051bfee9bc2

* entry[+].fullUrl = Canonical(8779aeaa-d7ed-4450-8a5f-d685ddc15dc3) // Rikkes vægt
* entry[=].resource = 8779aeaa-d7ed-4450-8a5f-d685ddc15dc3

* entry[+].fullUrl = Canonical(a5118cac-0fbc-4fed-a4b7-df246732c5f7) // Forældre-barn relation, ukendt
* entry[=].resource = a5118cac-0fbc-4fed-a4b7-df246732c5f7

Instance: a5118cac-0fbc-4fed-a4b7-df246732c5f7
InstanceOf: klgateway-children-parent-relationship
Usage: #example
Title: "RikkeChildrenParentRelationship"
Description: "Rikkes relation til forældre barselsbesøg, data mangler"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9)
* code.coding[TempCode] = Tempcodes#763c6f21-5467-4713-82fb-716c9d0a1fdf "Forælder-barn-relation"
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown