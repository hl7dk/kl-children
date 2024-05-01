Instance: b9479825-6be1-4fa1-a2ae-74fe67014caa
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-1"
Usage: #example
* type = #collection
* timestamp = 2020-02-05T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8" //Kirsten
* entry[=].resource = fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a" //Knud
* entry[=].resource = e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6" //Graviditetsbesøg
* entry[=].resource = dcaf11eb-1fa5-4bf6-aa8d-1d5a07dceba6

* entry[+].fullUrl = "https://test.fhir.dk/Observation/5dc67553-92c1-4d1d-a714-f683f9bdfe88" //Forælders sårbarhed, Kirsten
* entry[=].resource = 5dc67553-92c1-4d1d-a714-f683f9bdfe88

* entry[+].fullUrl = "https://test.fhir.dk/Observation/e1e03870-801d-420d-9eac-2a29de8c4134" // Forælders sårbarhed Knud
* entry[=].resource = e1e03870-801d-420d-9eac-2a29de8c4134

* entry[+].fullUrl = "https://test.fhir.dk/Observation/722b17a4-fbd0-46e5-a58b-62f7a4b87699" // Forælders psykiske status Kirsten
* entry[=].resource = 722b17a4-fbd0-46e5-a58b-62f7a4b87699

* entry[+].fullUrl = "https://test.fhir.dk/Observation/48b3dc28-b489-4cd1-893f-8973ed14e8f6" // Forælders psykiske status Knud
* entry[=].resource = 48b3dc28-b489-4cd1-893f-8973ed14e8f6

* entry[+].fullUrl = "https://test.fhir.dk/Observation/8ff12f7a-4e53-4061-ba00-fe473d390471" // Forælders netværk, Kirsten
* entry[=].resource = 8ff12f7a-4e53-4061-ba00-fe473d390471

* entry[+].fullUrl = "https://test.fhir.dk/Observation/6603abaf-1714-4052-a5ed-f8f026655177" // Forælders netværk, Knud
* entry[=].resource = 6603abaf-1714-4052-a5ed-f8f026655177

* entry[+].fullUrl = "https://test.fhir.dk/Observation/c98626d1-e3a1-42ac-8732-d7eb63236d8c"
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
Usage: #inline
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
Usage: #inline
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
Usage: #inline
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
* timestamp = 2020-05-07T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/ebaaad51-e77f-4fc1-944a-24b0ace0a9f9" //Barselsbesøg
* entry[=].resource = ebaaad51-e77f-4fc1-944a-24b0ace0a9f9

* entry[+].fullUrl = "https://test.fhir.dk/Observation/4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f" //Fundamning, periode-start
* entry[=].resource = 4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f

* entry[+].fullUrl = "https://test.fhir.dk/Observation/23fe85c3-3ff2-4093-89aa-5051bfee9bc2" // Fuldamning, status
* entry[=].resource = 23fe85c3-3ff2-4093-89aa-5051bfee9bc2

* entry[+].fullUrl = "https://test.fhir.dk/Observation/8779aeaa-d7ed-4450-8a5f-d685ddc15dc3" // Rikkes vægt
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
* period.start = 2020-05-07
* status = $EncounterStatus#finished
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* class = $V3ACTCODES#HH

Instance: 4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f
InstanceOf: klgateway-children-feeding-observation
Usage: #inline
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
Usage: #inline
Title: "Rikkes ammestatus ved barselsbesøg, fuldammes"
Description: "Rikkes status på madning ved barselsbesøg: fuldamning"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9)
* code.coding[FBOECode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
* valueCodeableConcept = Tempcodes#77a008dd-21cc-452f-a1ee-ac8d025b7817 "Fuldamning, inklusiv modermælk på flaske"
* status = #final
* effectiveDateTime = 2020-05-07T00:00:00.000Z

Instance: 8779aeaa-d7ed-4450-8a5f-d685ddc15dc3
InstanceOf: klgateway-children-bodyweight
Usage: #inline
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
* effectiveDateTime = 2020-05-07

//2nd - b

Instance: 74dcb49e-dd6a-4450-9fb8-85ad0e7bed38
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-2b"
Usage: #example
* type = #collection
* timestamp = 2020-05-09T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/ebaaad51-e77f-4fc1-944a-24b0ace0a9f9" //Barselsbesøg
* entry[=].resource = ebaaad51-e77f-4fc1-944a-24b0ace0a9f9

* entry[+].fullUrl = "https://test.fhir.dk/Observation/4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f" //Fundamning, periode-start
* entry[=].resource = 4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f

* entry[+].fullUrl = "https://test.fhir.dk/Observation/23fe85c3-3ff2-4093-89aa-5051bfee9bc2" // Fuldamning, status
* entry[=].resource = 23fe85c3-3ff2-4093-89aa-5051bfee9bc2

* entry[+].fullUrl = "https://test.fhir.dk/Observation/8779aeaa-d7ed-4450-8a5f-d685ddc15dc3" // Rikkes vægt
* entry[=].resource = 8779aeaa-d7ed-4450-8a5f-d685ddc15dc3

* entry[+].fullUrl = "https://test.fhir.dk/Observation/a5118cac-0fbc-4fed-a4b7-df246732c5f7" // Forældre-barn relation, ukendt
* entry[=].resource = a5118cac-0fbc-4fed-a4b7-df246732c5f7

Instance: a5118cac-0fbc-4fed-a4b7-df246732c5f7
InstanceOf: klgateway-children-parent-relationship
Usage: #inline
Title: "RikkeChildrenParentRelationship"
Description: "Rikkes relation til forældre barselsbesøg, data mangler"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9)
* code.coding[TempCode] = Tempcodes#763c6f21-5467-4713-82fb-716c9d0a1fdf "Forælder-barn-relation"
* status = #final
* effectiveDateTime = 2020-07-07T00:00:00.000Z
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown

//3rd
Instance: a27ab0ea-4018-4516-900c-f1249a28dc37
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-3"
Usage: #example
* type = #collection
* timestamp = 2020-05-17T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8" //Kirsten
* entry[=].resource = fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a" //Knud
* entry[=].resource = e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a-v2

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = "https://test.fhir.dk/RelatedPerson/a4b064a0-7fdd-467f-81cc-d1575b52b7f8" //Kirsten mor
* entry[=].resource = a4b064a0-7fdd-467f-81cc-d1575b52b7f8

* entry[+].fullUrl = "https://test.fhir.dk/RelatedPerson/e9704ba6-f6ca-46b1-9d19-d9b4bcdc864c" //Knud far
* entry[=].resource = e9704ba6-f6ca-46b1-9d19-d9b4bcdc864c

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/62c429e2-fdc5-4e33-83e1-0db858175e08" //Etableringsbesøg
* entry[=].resource = 62c429e2-fdc5-4e33-83e1-0db858175e08

* entry[+].fullUrl = "https://test.fhir.dk/Observation/711081e9-46d7-4841-98cd-3f64130318b7" //ammestatus
* entry[=].resource = 711081e9-46d7-4841-98cd-3f64130318b7

* entry[+].fullUrl = "https://test.fhir.dk/Observation/5b9a6ff2-c941-41e9-9c4c-9f4667bc063a" //vægt
* entry[=].resource = 5b9a6ff2-c941-41e9-9c4c-9f4667bc063a

* entry[+].fullUrl = "https://test.fhir.dk/Observation/d07d8d25-bc06-487e-a4b5-e180601c62d9" //højde
* entry[=].resource = d07d8d25-bc06-487e-a4b5-e180601c62d9

* entry[+].fullUrl = "https://test.fhir.dk/Observation/258e2623-abf5-499b-887b-3b70dc19507c" //hovedomfang
* entry[=].resource = 258e2623-abf5-499b-887b-3b70dc19507c

* entry[+].fullUrl = "https://test.fhir.dk/Observation/62855009-6fbb-481e-9dd0-8a4c369bde0d" //forældre-barn relation
* entry[=].resource = 62855009-6fbb-481e-9dd0-8a4c369bde0d

* entry[+].fullUrl = "https://test.fhir.dk/Observation/0f6ddfae-2882-4ad5-aec4-1144d600eee8" //passiv rygning
* entry[=].resource = 0f6ddfae-2882-4ad5-aec4-1144d600eee8

* entry[+].fullUrl = "https://test.fhir.dk/Observation/5bc41bc3-b762-4a98-853d-d3daeac05ea4" //Forælders sårbarhed, Kirsten
* entry[=].resource = 5bc41bc3-b762-4a98-853d-d3daeac05ea4

* entry[+].fullUrl = "https://test.fhir.dk/Observation/a8cdc6fc-2bf8-457c-aa15-f7e547cf74f7" // Forælders sårbarhed Knud
* entry[=].resource = a8cdc6fc-2bf8-457c-aa15-f7e547cf74f7

* entry[+].fullUrl = "https://test.fhir.dk/Observation/d4df27ce-86f1-4330-b166-c4c4724a633e" // Forælders netværk, Kirsten
* entry[=].resource = d4df27ce-86f1-4330-b166-c4c4724a633e

* entry[+].fullUrl = "https://test.fhir.dk/Observation/0083e1d2-46d4-4da2-8497-596464cfc4b1" // Forælders netværk, Knud
* entry[=].resource = 0083e1d2-46d4-4da2-8497-596464cfc4b1

Instance: fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2
InstanceOf: klgateway-children-citizen
Description: "Borger, Kirsten Test Berggren, fra MedCom test-cprnumre. Holbæk kommune er journalførende organisation. Registreret som Rikkes forælder"
Usage: #inline
* id = "fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8"
* identifier.use = #official
* identifier.value = "2911829996"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "451000016003"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"
* link.type = http://hl7.org/fhir/link-type#seealso
* link.other = Reference(a4b064a0-7fdd-467f-81cc-d1575b52b7f8)

Instance: e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a-v2
InstanceOf: klgateway-children-citizen
Description: "Borger, Knud Odvar Test Mosebryggersen, fra MedCom test-cprnumre. Holbæk kommune er journalførende organisation. Registreret som Rikkes forælder"
Usage: #inline
* id = "e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a"
* identifier.use = #official
* identifier.value = "1502829995"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "451000016003"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"
* link.type = http://hl7.org/fhir/link-type#seealso
* link.other = Reference(e9704ba6-f6ca-46b1-9d19-d9b4bcdc864c)

Instance: a4b064a0-7fdd-467f-81cc-d1575b52b7f8
InstanceOf: klgateway-children-related-parent
Description: "Rikke's mor"
Usage: #inline
* patient = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* relationship = $RoleCode#PRN

Instance: e9704ba6-f6ca-46b1-9d19-d9b4bcdc864c
InstanceOf: klgateway-children-related-parent
Description: "Rikke's far"
Usage: #inline
* patient = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* relationship = $RoleCode#PRN

Instance: 62c429e2-fdc5-4e33-83e1-0db858175e08
InstanceOf: klgateway-children-encounter
Title: "Etableringsbesøg ved Rikke"
Usage: #inline
Description: "Kontakt, hvor der leveres etableringsbesøg ved Rikke"
* type = $FBOE#b4bf6058-502a-4d64-bb8e-369661f43b47 "Etableringsbesøg"
* period.start = 2020-05-17
* status = $EncounterStatus#finished
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* class = $V3ACTCODES#HH

Instance: 711081e9-46d7-4841-98cd-3f64130318b7
InstanceOf: klgateway-children-feeding-observation
Usage: #inline
Title: "Rikkes ammestatus ved etableringsbesøg, fuldammes"
Description: "Rikkes status på madning ved etableringsbesøg: fuldamning"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(62c429e2-fdc5-4e33-83e1-0db858175e08)
* code.coding[FBOECode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
* valueCodeableConcept = Tempcodes#77a008dd-21cc-452f-a1ee-ac8d025b7817 "Fuldamning, inklusiv modermælk på flaske"
* status = #final
* effectiveDateTime = 2020-05-17T00:00:00.000Z

Instance: 5b9a6ff2-c941-41e9-9c4c-9f4667bc063a
InstanceOf: klgateway-children-bodyweight
Usage: #inline
Title: "Rikkes vægt, etableringsbesøg"
Description: "Rikkes vægt ved etableringsbesøg"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(62c429e2-fdc5-4e33-83e1-0db858175e08)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#27113001
* code.coding[LOINC] = $LOINC#29463-7
* valueQuantity.value = 3400
* valueQuantity.unit = "g"
* valueQuantity.system = $UCUM
* valueQuantity.code = #g
* status = #final
* effectiveDateTime = 2020-05-17

Instance: d07d8d25-bc06-487e-a4b5-e180601c62d9
InstanceOf: klgateway-children-bodyheight
Usage: #inline
Title: "Rikkes længde etablering"
Description: "Rikkes kropslængde, etablering"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(62c429e2-fdc5-4e33-83e1-0db858175e08)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#1153637007
* code.coding[LOINC] = $LOINC#8302-2
* valueQuantity.value = 51
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2020-05-17

Instance: 258e2623-abf5-499b-887b-3b70dc19507c
InstanceOf: klgateway-children-headcircum
Usage: #inline
Title: "Rikkes hovedomkreds, etablering"
Description: "Rikkes hovedomkreds, etablering"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(62c429e2-fdc5-4e33-83e1-0db858175e08)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#363812007 "Head circumference"
* code.coding[LOINC] = $LOINC#9843-4 "Head Occipital-frontal circumference"
* valueQuantity.value = 35
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2020-05-17

Instance: 62855009-6fbb-481e-9dd0-8a4c369bde0d
InstanceOf: klgateway-children-parent-relationship
Usage: #inline
Title: "Rikkes relation til forældre ved etablering"
Description: "Rikkes relation til forældre ved etablering"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(62c429e2-fdc5-4e33-83e1-0db858175e08)
* code.coding[TempCode] = Tempcodes#763c6f21-5467-4713-82fb-716c9d0a1fdf "Forælder-barn-relation"
* valueCodeableConcept = Tempcodes#7a107df6-8fb8-4744-8413-be10b4c5c1d9 "Velfungerende forældre-barn-relation"
* status = #final
* effectiveDateTime = 2020-05-07

Instance: 0f6ddfae-2882-4ad5-aec4-1144d600eee8
InstanceOf: klgateway-children-passive-smoking
Usage: #inline
Title: "Rikkes passiv rygning ved etablering"
Description: "Rikkes passiv rygning ved etablering"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(62c429e2-fdc5-4e33-83e1-0db858175e08)
* code.coding[TempCode] = Tempcodes#28972d4b-fea3-42ec-b2a5-e2a26f79b14d "Passiv rygning"
* valueCodeableConcept.coding = Tempcodes#b54723cf-3114-4119-b1cb-28107a283a99	"Ikke udsat for tobaksrøg"
* status = #final
* effectiveDateTime = 2020-05-07

Instance: 5bc41bc3-b762-4a98-853d-d3daeac05ea4
InstanceOf: klgateway-children-parent-social-status
Title: "Forælders sårbarhed, Kirsten"
Usage: #inline
Description: "Indikator vedr. forælders sårbarhed ifm etablering, Kirsten"
* code.coding[TempCode] = Tempcodes#58997614-ba43-4534-90bd-10c7e76802f4 "Forælders sårbarhed"
* valueCodeableConcept.coding = Tempcodes#546e7bef-7a22-451e-971a-326fcd78a843 "Potentiel sårbarhed"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)

Instance: a8cdc6fc-2bf8-457c-aa15-f7e547cf74f7
InstanceOf: klgateway-children-parent-social-status
Title: "Forælders sårbarhed, Knud"
Usage: #inline
Description: "Indikator vedr. forælders sårbarhed ifm etablering, Knud"
* code.coding[TempCode] = Tempcodes#58997614-ba43-4534-90bd-10c7e76802f4 "Forælders sårbarhed"
* valueCodeableConcept.coding = Tempcodes#57dd67d7-175a-4541-87ff-db1381c4e1d9 "Ingen sårbarhed"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z
* subject = Reference(e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a-v2)

Instance: d4df27ce-86f1-4330-b166-c4c4724a633e
InstanceOf: klgateway-children-social-support-network
Usage: #inline
Title: "Forælders netværk, Kirsten"
Description: "Kirstens netværk ved etablering"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* code.coding[TempCode] = Tempcodes#7e7fab2f-278a-4b14-9bc9-efc36fffcba5 "Netværk"
* valueCodeableConcept = Tempcodes#fbd9a8a5-0ed6-4e1a-9841-066ade34b071 "Godt netværk"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z

Instance: 0083e1d2-46d4-4da2-8497-596464cfc4b1
InstanceOf: klgateway-children-social-support-network
Usage: #inline
Title: "Forælders netværk, Knud"
Description: "Knuds netværk ved etablering"
* subject = Reference(e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a-v2)
* code.coding[TempCode] = Tempcodes#7e7fab2f-278a-4b14-9bc9-efc36fffcba5 "Netværk"
* valueCodeableConcept = Tempcodes#fbd9a8a5-0ed6-4e1a-9841-066ade34b071 "Godt netværk"
* status = #final
* effectiveDateTime = 2020-02-05T00:00:00.000Z

// 4th - a
Instance: c60604d1-692b-4e6d-86e5-03046b2d2f16
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-4a"
Usage: #example
* type = #collection
* timestamp = 2020-06-01T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/78742a92-91b1-489f-9fea-6901f6d0b34b" //2. besøg i første levemåned
* entry[=].resource = 78742a92-91b1-489f-9fea-6901f6d0b34b


Instance: 78742a92-91b1-489f-9fea-6901f6d0b34b
InstanceOf: klgateway-children-encounter
Title: "Andet besøg i barnets første levemåned ved Rikke"
Usage: #inline
Description: "Kontakt, hvor der leveres andet besøg i barnets første levemåned ved Rikke"
* type = $FBOE#563c4174-f451-4c87-8db8-8d5472ca7ff6 "Andet besøg i barnets første levemåned"
* period.start = 2020-06-01
* status = $EncounterStatus#finished
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* class = $V3ACTCODES#HH


Instance: 84cf4f74-0cc7-47fe-8301-3bc8eb0ddd8f
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-4b"
Usage: #example
* type = #collection
* timestamp = 2020-06-02T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/78742a92-91b1-489f-9fea-6901f6d0b34b" //2. besøg i første levemåned
* entry[=].resource = 78742a92-91b1-489f-9fea-6901f6d0b34b

* entry[+].fullUrl = "https://test.fhir.dk/Observation/a85a7271-1838-4b93-ad2e-8a115a91fff7" // Rikkes vægt
* entry[=].resource = a85a7271-1838-4b93-ad2e-8a115a91fff7

* entry[+].fullUrl = "https://test.fhir.dk/Observation/f1bc69fc-c059-4b3a-8277-e45e985f74d6" // Rikkes højde
* entry[=].resource = f1bc69fc-c059-4b3a-8277-e45e985f74d6

* entry[+].fullUrl = "https://test.fhir.dk/Observation/f71f887e-cf4b-44fc-b211-76230e56f5cd" // Rikkes hovedomfang
* entry[=].resource = f71f887e-cf4b-44fc-b211-76230e56f5cd

* entry[+].fullUrl = "https://test.fhir.dk/Observation/44655dde-e380-4df2-8bea-b3e64a18d49f" // Rikkes fuldamning
* entry[=].resource = 44655dde-e380-4df2-8bea-b3e64a18d49f

* entry[+].fullUrl = "https://test.fhir.dk/Observation/e10d5d17-9f63-41ca-96b9-f43caee79efb" // Rikkes relation til forældre
* entry[=].resource = e10d5d17-9f63-41ca-96b9-f43caee79efb

* entry[+].fullUrl = "https://test.fhir.dk/Observation/0db05d8b-00b9-4125-8cb1-2edc064394a4" // Rikkes kommunikation
* entry[=].resource = 0db05d8b-00b9-4125-8cb1-2edc064394a4

Instance: a85a7271-1838-4b93-ad2e-8a115a91fff7
InstanceOf: klgateway-children-bodyweight
Usage: #inline
Title: "Rikkes vægt, andet besøg i barnets første levemåned"
Description: "Rikkes vægt ved andet besøg i barnets første levemåned"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(78742a92-91b1-489f-9fea-6901f6d0b34b)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#27113001
* code.coding[LOINC] = $LOINC#29463-7
* valueQuantity.value = 4150
* valueQuantity.unit = "g"
* valueQuantity.system = $UCUM
* valueQuantity.code = #g
* status = #final
* effectiveDateTime = 2020-06-01

Instance: f1bc69fc-c059-4b3a-8277-e45e985f74d6
InstanceOf: klgateway-children-bodyheight
Usage: #inline
Title: "Rikkes længde andet besøg i barnets første levemåned"
Description: "Rikkes kropslængde, andet besøg i barnets første levemåned"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(78742a92-91b1-489f-9fea-6901f6d0b34b)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#1153637007
* code.coding[LOINC] = $LOINC#8302-2
* valueQuantity.value = 53.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2020-06-01

Instance: f71f887e-cf4b-44fc-b211-76230e56f5cd
InstanceOf: klgateway-children-headcircum
Usage: #inline
Title: "Rikkes hovedomkreds, 2. besøg"
Description: "Rikkes hovedomkreds, 2. besøg"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(78742a92-91b1-489f-9fea-6901f6d0b34b)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#363812007 "Head circumference"
* code.coding[LOINC] = $LOINC#9843-4 "Head Occipital-frontal circumference"
* valueQuantity.value = 36.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2020-06-01

Instance: 44655dde-e380-4df2-8bea-b3e64a18d49f
InstanceOf: klgateway-children-feeding-observation
Usage: #inline
Title: "Rikkes ammestatus ved 2. besøg, fuldammes"
Description: "Rikkes status på madning ved 2. besøg: fuldamning"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(78742a92-91b1-489f-9fea-6901f6d0b34b)
* code.coding[FBOECode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
* valueCodeableConcept = Tempcodes#77a008dd-21cc-452f-a1ee-ac8d025b7817 "Fuldamning, inklusiv modermælk på flaske"
* status = #final
* effectiveDateTime = 2020-06-01

Instance: e10d5d17-9f63-41ca-96b9-f43caee79efb
InstanceOf: klgateway-children-parent-relationship
Usage: #inline
Title: "Rikkes relation til forældre ved 2. besøg"
Description: "Rikkes relation til forældre ved 2. besøg"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(78742a92-91b1-489f-9fea-6901f6d0b34b)
* code.coding[TempCode] = Tempcodes#763c6f21-5467-4713-82fb-716c9d0a1fdf "Forælder-barn-relation"
* valueCodeableConcept = Tempcodes#7a107df6-8fb8-4744-8413-be10b4c5c1d9 "Velfungerende forældre-barn-relation"
* status = #final
* effectiveDateTime = 2020-06-01

Instance: 0db05d8b-00b9-4125-8cb1-2edc064394a4
InstanceOf: klgateway-children-communication
Usage: #inline
Title: "Rikkes kommunikation 2. besøg"
Description: "Rikkes kommunikation ved 2. besøg"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(78742a92-91b1-489f-9fea-6901f6d0b34b)
* code.coding[TempCode] = Tempcodes#653c2b0b-bb64-4906-888b-aea6fef3c3f8 "Kommunikation"
* valueCodeableConcept = Tempcodes#042d522d-0abe-46eb-a958-6e235b5d5408 "Kommunikerer alderssvarende" 
* status = #final
* effectiveDateTime = 2020-06-01

//5th
Instance: 567a4d32-b3eb-46d6-8564-c7c2a1a1b903
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-5"
Usage: #example
* type = #collection
* timestamp = 2020-07-07T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8" //Kirsten
* entry[=].resource = fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a" //Knud
* entry[=].resource = e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a-v2

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = "https://test.fhir.dk/RelatedPerson/a4b064a0-7fdd-467f-81cc-d1575b52b7f8" //Kirsten mor
* entry[=].resource = a4b064a0-7fdd-467f-81cc-d1575b52b7f8

* entry[+].fullUrl = "https://test.fhir.dk/RelatedPerson/e9704ba6-f6ca-46b1-9d19-d9b4bcdc864c" //Knud far
* entry[=].resource = e9704ba6-f6ca-46b1-9d19-d9b4bcdc864c

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/d84ae0c1-4054-476d-950a-993aa1de3320" //2 måneders besøg
* entry[=].resource = d84ae0c1-4054-476d-950a-993aa1de3320

* entry[+].fullUrl = "https://test.fhir.dk/QuestionnaireResponse/e95e75ea-bef7-4b37-bc38-6cb7b4d3a7df" //Kirstens EPDS
* entry[=].resource = e95e75ea-bef7-4b37-bc38-6cb7b4d3a7df

* entry[+].fullUrl = "https://test.fhir.dk/QuestionnaireResponse/6b1b28f3-f2f2-4f81-b840-b9aaf6a3fa9d" //Knuds EPDS
* entry[=].resource = 6b1b28f3-f2f2-4f81-b840-b9aaf6a3fa9d

* entry[+].fullUrl = "https://test.fhir.dk/Observation/36d31f74-0835-474d-825b-d37562cfaa0a" //Kirsten psykisk tilstand, påvirket
* entry[=].resource = 36d31f74-0835-474d-825b-d37562cfaa0a

* entry[+].fullUrl = "https://test.fhir.dk/Observation/620b137a-344a-46b4-b806-899744d927e9" //Kirsten exam result, nedtrykt
* entry[=].resource = 620b137a-344a-46b4-b806-899744d927e9

* entry[+].fullUrl = "https://test.fhir.dk/Observation/78dd76e4-3480-46ce-83d7-e81d4898bd52" //Kirsten exam result, depressive ledsagesymptomer
* entry[=].resource = 78dd76e4-3480-46ce-83d7-e81d4898bd52

* entry[+].fullUrl = "https://test.fhir.dk/Observation/ea3dd374-c0b8-4a5b-a55b-6f875250410d" //Knuds psykisk tilstand, forventelig
* entry[=].resource = ea3dd374-c0b8-4a5b-a55b-6f875250410d

* entry[+].fullUrl = "https://test.fhir.dk/Observation/af086f37-4784-42b0-bbfe-9517a8c4f910" //Rikke forældre-barn relation, let udfordret
* entry[=].resource = af086f37-4784-42b0-bbfe-9517a8c4f910

* entry[+].fullUrl = "https://test.fhir.dk/Observation/5f4dbe28-6fef-4c8d-92fd-5845cccdc10c" //Rikke exam result, følelsesmæssige behov ikke dækket
* entry[=].resource = 5f4dbe28-6fef-4c8d-92fd-5845cccdc10c

* entry[+].fullUrl = "https://test.fhir.dk/Observation/fbc991ff-39f3-414d-ae56-cc09f1191902" //Rikke social kontakt, ikke alderssvarende
* entry[=].resource = fbc991ff-39f3-414d-ae56-cc09f1191902

* entry[+].fullUrl = "https://test.fhir.dk/Observation/322439d1-6b40-457f-899f-79f3aa71465f" //Rikke exam result, græder meget
* entry[=].resource = 322439d1-6b40-457f-899f-79f3aa71465f

* entry[+].fullUrl = "https://test.fhir.dk/Observation/36003d32-79f2-4e49-aaad-b90361eff393" //Rikke exam result, afvigende øjenkontakt
* entry[=].resource = 36003d32-79f2-4e49-aaad-b90361eff393

* entry[+].fullUrl = "https://test.fhir.dk/Observation/c7a83370-eb45-40b1-af81-7340a640cc20" //ammestatus
* entry[=].resource = c7a83370-eb45-40b1-af81-7340a640cc20

* entry[+].fullUrl = "https://test.fhir.dk/Observation/23430a7d-2310-45d5-9e62-0d210c309a26" //vægt
* entry[=].resource = 23430a7d-2310-45d5-9e62-0d210c309a26

* entry[+].fullUrl = "https://test.fhir.dk/Observation/27a28610-3637-4042-a00f-2a183c743848" //højde
* entry[=].resource = 27a28610-3637-4042-a00f-2a183c743848

* entry[+].fullUrl = "https://test.fhir.dk/Observation/dc5df970-dcd3-4171-8c45-aa9aed1b7ac3" //hovedomfang
* entry[=].resource = dc5df970-dcd3-4171-8c45-aa9aed1b7ac3

* entry[+].fullUrl = "https://test.fhir.dk/Observation/8786751e-5d85-48c2-aade-3a9d321956ed" //kommunikation
* entry[=].resource = 8786751e-5d85-48c2-aade-3a9d321956ed

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/64c5d9f1-1647-4ed0-9f61-172a0c96ecc1" //Kirstens ’Anbefalet kontakt til praktiserende læge’
* entry[=].resource = 64c5d9f1-1647-4ed0-9f61-172a0c96ecc1

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/39c7eccc-4cc4-496a-8664-ab73017edb58" //Kirstens ’Forældregruppe hvor forælder har psykisk reaktion’
* entry[=].resource = 39c7eccc-4cc4-496a-8664-ab73017edb58

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/d3df60d0-4380-43b4-8d15-2e3fb3b4c50a" //Kirstens ’Støtte ved psykisk reaktion eller sårbarhed’
* entry[=].resource = d3df60d0-4380-43b4-8d15-2e3fb3b4c50a

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/6122356d-a611-4660-8b0f-c86185f465f8" // Rikkes ’Vejledning i kontakt, samspil og barnets behov’
* entry[=].resource = 6122356d-a611-4660-8b0f-c86185f465f8

Instance: d84ae0c1-4054-476d-950a-993aa1de3320
InstanceOf: klgateway-children-encounter
Title: "2 måneders besøg ved Rikke"
Usage: #inline
Description: "Kontakt, hvor der leveres 2 måneders besøgved Rikke"
* type = $FBOE#51f30d1c-d60e-4e3e-ac22-ec9712ea962d "Besøg ved det ca. 2 måneder gamle barn"
* period.start = 2020-07-07
* status = $EncounterStatus#finished
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* class = $V3ACTCODES#HH

Instance: e95e75ea-bef7-4b37-bc38-6cb7b4d3a7df
InstanceOf: KLGatewayChildrenQuestionnaireResponse
Usage: #example
Title: "EPDS Kirsten"
Description: "EPDS besvarelse mor, Kirsten"
* questionnaire = "http://fhir.kl.dk/children/Questionnaire/klgateway-children-epds"
* status = #completed
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* extension[findingInformer].valueCodeableConcept = Tempcodes#a3d30bf2-4a3c-4c49-9001-5363ae11681c "Borger"
* authored = 2020-07-07

* item[0].linkId = "1humor"
* item[=].answer.valueInteger = 0

* item[+].linkId = "2happiness"
* item[=].answer.valueInteger = 2

* item[+].linkId = "3blame"
* item[=].answer.valueInteger = 3

* item[+].linkId = "4worry"
* item[=].answer.valueInteger = 1

* item[+].linkId = "5anxious"
* item[=].answer.valueInteger = 2

* item[+].linkId = "6grow"
* item[=].answer.valueInteger = 1

* item[+].linkId = "7sleep"
* item[=].answer.valueInteger = 1

* item[+].linkId = "8sad"
* item[=].answer.valueInteger = 3

* item[+].linkId = "9cry"
* item[=].answer.valueInteger = 2

* item[+].linkId = "10harm"
* item[=].answer.valueInteger = 0

* item[+].linkId = "score"
* item[=].answer.valueInteger = 15

Instance: 6b1b28f3-f2f2-4f81-b840-b9aaf6a3fa9d
InstanceOf: KLGatewayChildrenQuestionnaireResponse
Usage: #example
Title: "EPDS Knud"
Description: "EPDS besvarelse far, Knud"
* questionnaire = "http://fhir.kl.dk/children/Questionnaire/klgateway-children-epds"
* status = #completed
* subject = Reference(e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a-v2)
* extension[findingInformer].valueCodeableConcept = Tempcodes#a3d30bf2-4a3c-4c49-9001-5363ae11681c "Borger"
* authored = 2020-07-07

* item[0].linkId = "1humor"
* item[=].answer.valueInteger = 0

* item[+].linkId = "2happiness"
* item[=].answer.valueInteger = 0

* item[+].linkId = "3blame"
* item[=].answer.valueInteger = 0

* item[+].linkId = "4worry"
* item[=].answer.valueInteger = 1

* item[+].linkId = "5anxious"
* item[=].answer.valueInteger = 0

* item[+].linkId = "6grow"
* item[=].answer.valueInteger = 1

* item[+].linkId = "7sleep"
* item[=].answer.valueInteger = 1

* item[+].linkId = "8sad"
* item[=].answer.valueInteger = 0

* item[+].linkId = "9cry"
* item[=].answer.valueInteger = 0

* item[+].linkId = "10harm"
* item[=].answer.valueInteger = 0

* item[+].linkId = "score"
* item[=].answer.valueInteger = 2

Instance: 36d31f74-0835-474d-825b-d37562cfaa0a
InstanceOf: klgateway-children-parent-mental-status
Usage: #inline
Title: "Forælders psykiske tilstand, Kirsten"
Description: "Kirstens psykiske tilstand ved 2 mrd"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* code.coding[FBOECode] = $FBOE#2c39af9f-8e45-4c88-962f-e7a9e2cd31b6 "Forælders psykiske tilstand"
* valueCodeableConcept = Tempcodes#f86c2526-3b04-454c-a99e-d350f699dc94 "Psykisk reaktion"
* status = #final
* effectiveDateTime = 2020-07-07

Instance: ea3dd374-c0b8-4a5b-a55b-6f875250410d
InstanceOf: klgateway-children-parent-mental-status
Usage: #inline
Title: "Forælders psykiske tilstand, Knud"
Description: "Knuds psykiske tilstand ved 2mrd"
* subject = Reference(e2cbbca1-ac3d-4bb1-b43b-c0d62b48b33a-v2)
* code.coding[FBOECode] = $FBOE#2c39af9f-8e45-4c88-962f-e7a9e2cd31b6 "Forælders psykiske tilstand"
* valueCodeableConcept = Tempcodes#0e5db980-8c6e-4034-abab-054e0eb40935 "Forventelig psykisk reaktion"
* status = #final
* effectiveDateTime = 2020-07-07

Instance: 620b137a-344a-46b4-b806-899744d927e9
InstanceOf: klgateway-children-exam-result
Usage: #inline
Title: "Kirstens, forælders psykiske tilstand nuancering, 2mrds besøg"
Description: "Kirstens, forælders psykiske tilstand nuancering, 2mrds besøg: nedtrykt"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* code.coding[SNOMEDCT] = $SCT#363788007 // "Clinical history/examination observable"
* valueCodeableConcept = Tempcodes#fc3d65d1-1509-47ef-8845-60adea5d7a65 "Nedtrykthed"
* status = #final
* effectiveDateTime = 2020-07-07

Instance: 78dd76e4-3480-46ce-83d7-e81d4898bd52
InstanceOf: klgateway-children-exam-result
Usage: #inline
Title: "Kirstens, forælders psykiske tilstand nuancering, 2mrds besøg"
Description: "Kirstens, forælders psykiske tilstand nuancering, 2mrds besøg: Depressive ledsagesymptomer"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* code.coding[SNOMEDCT] = $SCT#363788007 // "Clinical history/examination observable"
* valueCodeableConcept = Tempcodes#dc7cdfb3-d33b-41cc-bb18-2be3592fe323 "Depressive ledsagesymptomer"
* status = #final
* effectiveDateTime = 2020-07-07

Instance: af086f37-4784-42b0-bbfe-9517a8c4f910
InstanceOf: klgateway-children-parent-relationship
Usage: #inline
Title: "Rikkes relation til forældre 2 mrds besøg"
Description: "Rikkes relation til forældre ved 2 mrds besøg: let påvirket"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(d84ae0c1-4054-476d-950a-993aa1de3320)
* code.coding[TempCode] = Tempcodes#763c6f21-5467-4713-82fb-716c9d0a1fdf "Forælder-barn-relation"
* valueCodeableConcept = Tempcodes#274791a5-094d-4e6a-831e-e712d3d66aeb "Let påvirket forældre-barn relation"
* status = #final
* effectiveDateTime = 2020-07-07

Instance: 5f4dbe28-6fef-4c8d-92fd-5845cccdc10c
InstanceOf: klgateway-children-exam-result
Usage: #inline
Title: "Rikke, forældre barn relation nuancering, 2mrds besøg"
Description: "Rikke, forældre barn relation nuancering, 2mrds besøg: Følelsesmæssige behov dækkes ikke"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(d84ae0c1-4054-476d-950a-993aa1de3320)
* code.coding[SNOMEDCT] = $SCT#363788007 // "Clinical history/examination observable"
* valueCodeableConcept = Tempcodes#51bc227a-3455-474d-bf42-fc7a7875513c "Følelsesmæssige behov mødes ikke"
* status = #final
* effectiveDateTime = 2020-07-07

Instance: fbc991ff-39f3-414d-ae56-cc09f1191902
InstanceOf: klgateway-children-social-interaction
Usage: #example
Title: "Rikke social kontakt"
Description: "Rikkes sociale kontakt ved 2mrd"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(d84ae0c1-4054-476d-950a-993aa1de3320)
* code.coding[TempCode] = Tempcodes#68605f88-49fb-44b9-b327-86947af6aa93 "Social kontakt"
* valueCodeableConcept = Tempcodes#e1c1674c-9384-4d95-999f-763f3868f444 "Udfordringer i social kontakt"
* status = #final
* effectiveDateTime = 2020-07-07

Instance: 322439d1-6b40-457f-899f-79f3aa71465f
InstanceOf: klgateway-children-exam-result
Usage: #inline
Title: "Rikke, social kontakt nuancering, 2mrds besøg"
Description: "Rikke, social kontakt nuancering, 2mrds besøg: græder meget"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(d84ae0c1-4054-476d-950a-993aa1de3320)
* code.coding[SNOMEDCT] = $SCT#363788007 // "Clinical history/examination observable"
* valueCodeableConcept = Tempcodes#e818645e-47a7-4125-a579-a68f556b7344	"Græder meget"
* status = #final
* effectiveDateTime = 2020-07-07

Instance: 36003d32-79f2-4e49-aaad-b90361eff393
InstanceOf: klgateway-children-exam-result
Usage: #inline
Title: "Rikke, social kontakt nuancering, 2mrds besøg"
Description: "Rikke, social kontakt nuancering, 2mrds besøg: afvigende øjenkontakt"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(d84ae0c1-4054-476d-950a-993aa1de3320)
* code.coding[SNOMEDCT] = $SCT#363788007 // "Clinical history/examination observable"
* valueCodeableConcept = Tempcodes#bfd18100-d007-4465-95ce-5bf2ac8bc091 "Afvigende øjenkontakt"
* status = #final
* effectiveDateTime = 2020-07-07

Instance: 23430a7d-2310-45d5-9e62-0d210c309a26
InstanceOf: klgateway-children-bodyweight
Usage: #inline
Title: "Rikkes vægt, 2 måneders besøg"
Description: "Rikkes vægt ved 2 måneders besøg"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(d84ae0c1-4054-476d-950a-993aa1de3320)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#27113001
* code.coding[LOINC] = $LOINC#29463-7
* valueQuantity.value = 5100
* valueQuantity.unit = "g"
* valueQuantity.system = $UCUM
* valueQuantity.code = #g
* status = #final
* effectiveDateTime = 2020-07-07

Instance: 27a28610-3637-4042-a00f-2a183c743848
InstanceOf: klgateway-children-bodyheight
Usage: #inline
Title: "Rikkes længde 2 måneders besøg"
Description: "Rikkes kropslængde, 2 måneders besøg"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(d84ae0c1-4054-476d-950a-993aa1de3320)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#1153637007
* code.coding[LOINC] = $LOINC#8302-2
* valueQuantity.value = 57
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2020-07-07

Instance: dc5df970-dcd3-4171-8c45-aa9aed1b7ac3
InstanceOf: klgateway-children-headcircum
Usage: #inline
Title: "Rikkes hovedomkreds, 2 måneders besøg"
Description: "Rikkes hovedomkreds, 2 måneders besøg"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(d84ae0c1-4054-476d-950a-993aa1de3320)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#363812007 "Head circumference"
* code.coding[LOINC] = $LOINC#9843-4 "Head Occipital-frontal circumference"
* valueQuantity.value = 38
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2020-07-07

Instance: c7a83370-eb45-40b1-af81-7340a640cc20
InstanceOf: klgateway-children-feeding-observation
Usage: #inline
Title: "Rikkes ammestatus ved 2 måneders besøg, fuldammes"
Description: "Rikkes status på madning ved 2 måneders besøg: fuldamning"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(d84ae0c1-4054-476d-950a-993aa1de3320)
* code.coding[FBOECode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
* valueCodeableConcept = Tempcodes#77a008dd-21cc-452f-a1ee-ac8d025b7817 "Fuldamning, inklusiv modermælk på flaske"
* status = #final
* effectiveDateTime = 2020-07-07

Instance: 8786751e-5d85-48c2-aade-3a9d321956ed
InstanceOf: klgateway-children-communication
Usage: #inline
Title: "Rikkes kommunikation 2 måneders besøg"
Description: "Rikkes kommunikation ved 2 måneders besøg"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* encounter = Reference(d84ae0c1-4054-476d-950a-993aa1de3320)
* code.coding[TempCode] = Tempcodes#653c2b0b-bb64-4906-888b-aea6fef3c3f8 "Kommunikation"
* valueCodeableConcept = Tempcodes#042d522d-0abe-46eb-a958-6e235b5d5408 "Kommunikerer alderssvarende" 
* status = #final
* effectiveDateTime = 2020-07-07

Instance: 64c5d9f1-1647-4ed0-9f61-172a0c96ecc1
InstanceOf: klgateway-children-intervention
Usage: #inline
Title: "Kirsten intervention, praktiserende læge"
Description: "Kirsten intervention, praktiserende læge"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* period.start = 2020-07-07
* intent = #plan
* status = #active
* activity.detail.status = #unknown
* activity.detail.code.coding = Tempcodes#b708c983-0bb8-4303-a442-9af4c8b950bb "Anbefaling af kontakt til praktiserende læge"
* activity.detail.reasonCode.coding = Tempcodes#f86c2526-3b04-454c-a99e-d350f699dc94 "Psykisk reaktion"

Instance: 39c7eccc-4cc4-496a-8664-ab73017edb58
InstanceOf: klgateway-children-intervention
Usage: #inline
Title: "Kirsten intervention, forældregruppe"
Description: "Kirsten intervention, forældregruppe"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* period.start = 2020-07-07
* intent = #plan
* status = #active
* activity.detail.status = #unknown
* activity.detail.code.coding = Tempcodes#e535fc78-ce61-4f97-b717-5901d5330ca9 "Forældregruppe, hvor forælder har psykisk reaktion"
* activity.detail.reasonCode.coding = Tempcodes#f86c2526-3b04-454c-a99e-d350f699dc94 "Psykisk reaktion"

Instance: d3df60d0-4380-43b4-8d15-2e3fb3b4c50a
InstanceOf: klgateway-children-intervention
Usage: #inline
Title: "Kirsten intervention, Støtte ved psykisk reaktion eller sårbarhed"
Description: "Kirsten intervention, Støtte ved psykisk reaktion eller sårbarhed"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* period.start = 2020-07-07
* intent = #plan
* status = #active
* activity.detail.status = #unknown
* activity.detail.code.coding = Tempcodes#8af7f611-2bae-4ba5-923a-d748501d1ad3 "Støtte ved psykisk reaktion eller sårbarhed"
* activity.detail.reasonCode.coding = Tempcodes#f86c2526-3b04-454c-a99e-d350f699dc94 "Psykisk reaktion"

Instance: 6122356d-a611-4660-8b0f-c86185f465f8
InstanceOf: klgateway-children-intervention
Usage: #inline
Title: "Rikke behovsindsats social kontakt"
Description: "Rikkes behovsindsats vedr. social kontakt"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* period.start = 2020-07-07
* intent = #plan
* status = #active
* activity.detail.status = #unknown
* activity.detail.code.coding = Tempcodes#b3de92ea-ac5e-4f87-809e-a9e40b59cc34 "Vejledning i kontakt, samspil og barnets behov"
* activity.detail.reasonCode.coding = Tempcodes#e1c1674c-9384-4d95-999f-763f3868f444 "Udfordringer i social kontakt"

//6th
Instance: dbe422ac-dd15-4562-838d-1f5ff9ae45d8
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-6"
Usage: #example
* type = #collection
* timestamp = 2020-07-09T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8" //Kirsten
* entry[=].resource = fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = "https://test.fhir.dk/RelatedPerson/a4b064a0-7fdd-467f-81cc-d1575b52b7f8" //Kirsten mor
* entry[=].resource = a4b064a0-7fdd-467f-81cc-d1575b52b7f8

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/96d43e08-4011-4003-9c37-4a2eabca0c4a" //behovskontakt 1, rikke
* entry[=].resource = 96d43e08-4011-4003-9c37-4a2eabca0c4a

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/8d097cb2-3b48-46e9-9d96-a097bbff0928" //behovskontakt 1, kirsten
* entry[=].resource = 8d097cb2-3b48-46e9-9d96-a097bbff0928

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/d3df60d0-4380-43b4-8d15-2e3fb3b4c50a" //Kirstens ’Støtte ved psykisk reaktion eller sårbarhed’
* entry[=].resource = d3df60d0-4380-43b4-8d15-2e3fb3b4c50a

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/6122356d-a611-4660-8b0f-c86185f465f8" // Rikkes ’Vejledning i kontakt, samspil og barnets behov’
* entry[=].resource = 6122356d-a611-4660-8b0f-c86185f465f8

Instance: 96d43e08-4011-4003-9c37-4a2eabca0c4a
InstanceOf: klgateway-children-encounter
Title: "Behovskontakt Kirsten 1"
Usage: #inline
Description: "Behovskontakt Kirsten 1"
* type = $FBOE#4b039ba1-4005-42e6-b672-09b81ad7578a "Behovsbesøg af småbørnssundhedsplejen"
* period.start = 2020-07-09
* status = $EncounterStatus#finished
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* class = Tempcodes#83559d49-fe53-42e9-a191-072da13c8c99 "Telefonisk"
* extension[basedOnIntervention].valueReference = Reference(d3df60d0-4380-43b4-8d15-2e3fb3b4c50a)

Instance: 8d097cb2-3b48-46e9-9d96-a097bbff0928
InstanceOf: klgateway-children-encounter
Title: "Behovskontakt Rikke 1"
Usage: #inline
Description: "Behovskontakt Rikke 1"
* type = $FBOE#4b039ba1-4005-42e6-b672-09b81ad7578a "Behovsbesøg af småbørnssundhedsplejen"
* period.start = 2020-07-09
* status = $EncounterStatus#finished
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* class = Tempcodes#83559d49-fe53-42e9-a191-072da13c8c99 "Telefonisk"
* extension[basedOnIntervention].valueReference = Reference(6122356d-a611-4660-8b0f-c86185f465f8)

//7th
Instance: a50c7477-c817-4f98-92a8-b8c15f015d9e
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-7"
Usage: #example
* type = #collection
* timestamp = 2020-07-14T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8" //Kirsten
* entry[=].resource = fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = "https://test.fhir.dk/RelatedPerson/a4b064a0-7fdd-467f-81cc-d1575b52b7f8" //Kirsten mor
* entry[=].resource = a4b064a0-7fdd-467f-81cc-d1575b52b7f8

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/ae1f1c80-af46-4893-b99e-0305c5a2bb95" //behovskontakt 2, rikke
* entry[=].resource = ae1f1c80-af46-4893-b99e-0305c5a2bb95

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/651dec86-17ee-4570-8759-964ca1270bcb" //behovskontakt 2, kirsten
* entry[=].resource = 651dec86-17ee-4570-8759-964ca1270bcb

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/d3df60d0-4380-43b4-8d15-2e3fb3b4c50a" //Kirstens ’Støtte ved psykisk reaktion eller sårbarhed’
* entry[=].resource = d3df60d0-4380-43b4-8d15-2e3fb3b4c50a-v2

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/6122356d-a611-4660-8b0f-c86185f465f8" // Rikkes ’Vejledning i kontakt, samspil og barnets behov’
* entry[=].resource = 6122356d-a611-4660-8b0f-c86185f465f8

Instance: 651dec86-17ee-4570-8759-964ca1270bcb
InstanceOf: klgateway-children-encounter
Title: "Behovskontakt Kirsten 2"
Usage: #inline
Description: "Behovskontakt Kirsten 2"
* type = $FBOE#4b039ba1-4005-42e6-b672-09b81ad7578a "Behovsbesøg af småbørnssundhedsplejen"
* period.start = 2020-07-14
* status = $EncounterStatus#finished
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* class = $V3ACTCODES#HH
* extension[basedOnIntervention].valueReference = Reference(d3df60d0-4380-43b4-8d15-2e3fb3b4c50a-v2)

Instance: ae1f1c80-af46-4893-b99e-0305c5a2bb95
InstanceOf: klgateway-children-encounter
Title: "Behovskontakt Rikke 2"
Usage: #inline
Description: "Behovskontakt Rikke 2"
* type = $FBOE#4b039ba1-4005-42e6-b672-09b81ad7578a "Behovsbesøg af småbørnssundhedsplejen"
* period.start = 2020-07-14
* status = $EncounterStatus#finished
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* class = $V3ACTCODES#HH
* extension[basedOnIntervention].valueReference = Reference(6122356d-a611-4660-8b0f-c86185f465f8)

Instance: d3df60d0-4380-43b4-8d15-2e3fb3b4c50a-v2
InstanceOf: klgateway-children-intervention
Usage: #inline
Title: "Kirsten intervention, Støtte ved psykisk reaktion eller sårbarhed"
Description: "Kirsten intervention, Støtte ved psykisk reaktion eller sårbarhed"
* id = "d3df60d0-4380-43b4-8d15-2e3fb3b4c50a"
* subject = Reference(fa03ee6c-e38a-44cf-8ef4-79f8ea91b3b8-v2)
* period.start = 2020-07-07
* period.end = 2020-07-14
* intent = #plan
* status = #completed
* activity.detail.status = #unknown
* activity.detail.code.coding = Tempcodes#8af7f611-2bae-4ba5-923a-d748501d1ad3 "Støtte ved psykisk reaktion eller sårbarhed"
* activity.detail.reasonCode.coding = Tempcodes#f86c2526-3b04-454c-a99e-d350f699dc94 "Psykisk reaktion"

//8th
Instance: d2e57785-7d0e-4b30-9e51-62c14185b9ed
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Rikke-8"
Usage: #example
* type = #collection
* timestamp = 2020-07-14T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
* entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/aa43bf55-e593-4212-8e01-cb31a96f9726" //behovskontakt 3, rikke
* entry[=].resource = aa43bf55-e593-4212-8e01-cb31a96f9726

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/6122356d-a611-4660-8b0f-c86185f465f8" // Rikkes ’Vejledning i kontakt, samspil og barnets behov’
* entry[=].resource = 6122356d-a611-4660-8b0f-c86185f465f8-v2


Instance: aa43bf55-e593-4212-8e01-cb31a96f9726
InstanceOf: klgateway-children-encounter
Title: "Behovskontakt Rikke 3"
Usage: #inline
Description: "Behovskontakt Rikke 3"
* type = $FBOE#4b039ba1-4005-42e6-b672-09b81ad7578a "Behovsbesøg af småbørnssundhedsplejen"
* period.start = 2020-07-23
* status = $EncounterStatus#finished
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* class = $V3ACTCODES#HH
* extension[basedOnIntervention].valueReference = Reference(6122356d-a611-4660-8b0f-c86185f465f8)

Instance: 6122356d-a611-4660-8b0f-c86185f465f8-v2
InstanceOf: klgateway-children-intervention
Usage: #inline
Title: "Rikke behovsindsats social kontakt, afsluttes"
Description: "Rikkes behovsindsats vedr. social kontakt, afsluttes"
* id = "6122356d-a611-4660-8b0f-c86185f465f8"
* subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
* period.start = 2020-07-07
* period.end = 2020-07-23
* intent = #plan
* status = #completed
* activity.detail.status = #unknown
* activity.detail.code.coding = Tempcodes#b3de92ea-ac5e-4f87-809e-a9e40b59cc34 "Vejledning i kontakt, samspil og barnets behov"
* activity.detail.reasonCode.coding = Tempcodes#e1c1674c-9384-4d95-999f-763f3868f444 "Udfordringer i social kontakt"
