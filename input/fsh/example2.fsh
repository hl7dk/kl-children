
Instance: 5f1d5816-a906-4314-a6f4-69b400682ec6
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Lars-1"
Usage: #example
* type = #collection
* timestamp = 2021-10-06T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/4ced31e7-f852-4bad-a320-fe2a02640434" //Lars
* entry[=].resource = 4ced31e7-f852-4bad-a320-fe2a02640434

* entry[+].fullUrl = "https://test.fhir.dk/Location/d1a03c42-7fdf-43da-9132-404a321c30b8" //Skolen i holbæk
* entry[=].resource = d1a03c42-7fdf-43da-9132-404a321c30b8

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/9a97ee62-ada2-45f6-8559-99477c028eb4" //Indskolingsundersøgelse
* entry[=].resource = 9a97ee62-ada2-45f6-8559-99477c028eb4

* entry[+].fullUrl = "https://test.fhir.dk/Observation/5e8df656-771c-4c17-a525-48c1ba7fe75e" //social kontakt
* entry[=].resource = 5e8df656-771c-4c17-a525-48c1ba7fe75e

* entry[+].fullUrl = "https://test.fhir.dk/Observation/f253b171-b876-4b54-9fd1-92369f0dc23a" // vægt
* entry[=].resource = f253b171-b876-4b54-9fd1-92369f0dc23a

* entry[+].fullUrl = "https://test.fhir.dk/Observation/b019bfd9-62df-46f1-9416-efa5711e5eb2" // højde
* entry[=].resource = b019bfd9-62df-46f1-9416-efa5711e5eb2


Instance: 4ced31e7-f852-4bad-a320-fe2a02640434
InstanceOf: klgateway-children-citizen
Description: "Barnet Lars"
Usage: #inline
* identifier.use = #official
* identifier.value = "0505159995"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "451000016003"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"

Instance: d1a03c42-7fdf-43da-9132-404a321c30b8
InstanceOf: klgateway-children-location
Usage: #inline
Title: "SchoolHolbaek"
Description: "Skole i Holbæk"
* identifier.system = "https://viden.stil.dk/display/OFFINSTREG/Institutionsregisteret"
* identifier.value = "280295"
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SCHOOL

Instance: 9a97ee62-ada2-45f6-8559-99477c028eb4
InstanceOf: klgateway-children-encounter
Title: "Indskolingsundersøgelse Lars"
Usage: #inline
Description: "Kontakt, der er Lars' indskolingsundersøgelse"
* type = $FBOE#c06ed6f1-be9d-460e-a45e-34821bcbd533 "Indskolingsundersøgelse"
* period.start = 2021-10-06T10:45:00.000Z
* status = $EncounterStatus#finished
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* class = $V3ACTCODES#AMB
* location.location = Reference(d1a03c42-7fdf-43da-9132-404a321c30b8)

Instance: 5e8df656-771c-4c17-a525-48c1ba7fe75e
InstanceOf: klgateway-children-social-interaction
Usage: #inline
Title: "Lars social kontakt ved indskoling"
Description: "Lars social kontakt ved indskoling"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* code.coding[TempCode] = Tempcodes#68605f88-49fb-44b9-b327-86947af6aa93 "Social kontakt"
* valueCodeableConcept = Tempcodes#008b1890-4be5-463a-b618-0ab3d89515d0 "Alderssvarende social kontakt"
* status = #final
* effectiveDateTime = 2021-10-06

Instance: f253b171-b876-4b54-9fd1-92369f0dc23a
InstanceOf: klgateway-children-bodyweight
Usage: #inline
Title: "Lars vægt indskoling"
Description: "Lars vægt indskoling"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#27113001 "Body weight"
* code.coding[LOINC] = $LOINC#29463-7
* valueQuantity.value = 26
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg
* status = #final
* effectiveDateTime = 2021-10-06

Instance: b019bfd9-62df-46f1-9416-efa5711e5eb2
InstanceOf: klgateway-children-bodyheight
Usage: #inline
Title: "Lars højde indskoling"
Description: "Lars højde indskoling"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[SNOMEDCT] = $SCT#248333004 "Standing height"
* code.coding[LOINC] = $LOINC#8302-2
* valueQuantity.value = 125
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2021-10-06

// 2nd - a

// Instance: c5b55e0e-3bc4-468a-8600-1b23617dbb58
// InstanceOf: klgateway-children-delivery-report
// Description: "DeliveryReport-Lars-2a"
// Usage: #example
// * type = #collection
// * timestamp = 2020-05-07T23:25:12Z

// * entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
// * entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

// * entry[+].fullUrl = "https://test.fhir.dk/Encounter/ebaaad51-e77f-4fc1-944a-24b0ace0a9f9" //Barselsbesøg
// * entry[=].resource = ebaaad51-e77f-4fc1-944a-24b0ace0a9f9

// * entry[+].fullUrl = "https://test.fhir.dk/Observation/4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f" //Fundamning, periode-start
// * entry[=].resource = 4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f

// * entry[+].fullUrl = "https://test.fhir.dk/Observation/23fe85c3-3ff2-4093-89aa-5051bfee9bc2" // Fuldamning, status
// * entry[=].resource = 23fe85c3-3ff2-4093-89aa-5051bfee9bc2

// * entry[+].fullUrl = "https://test.fhir.dk/Observation/8779aeaa-d7ed-4450-8a5f-d685ddc15dc3" // Rikkes vægt
// * entry[=].resource = 8779aeaa-d7ed-4450-8a5f-d685ddc15dc3


// Instance: e60106e2-413e-46c5-8a3f-62d8e77ce794
// InstanceOf: klgateway-children-citizen
// Description: "Barnet Rikke Test Berggren, fra MedComs liste af test cpr-numre"
// Usage: #inline
// * identifier.use = #official
// * identifier.value = "0505209996"
// * identifier.system = "urn:oid:1.2.208.176.1.2"
// * active = true
// * managingOrganization.identifier.use = #official
// * managingOrganization.identifier.value =  "451000016003"
// * managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"

// Instance: ebaaad51-e77f-4fc1-944a-24b0ace0a9f9
// InstanceOf: klgateway-children-encounter
// Title: "Barselsbesøg ved Rikke"
// Usage: #inline
// Description: "Kontakt, hvor der leveres barselsbesøg ved Rikke"
// * type = $FBOE#7d35a193-e808-4e77-b361-6c0d114d021f "Barselsbesøg"
// * period.start = 2020-05-07
// * status = $EncounterStatus#finished
// * subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
// * class = $V3ACTCODES#HH

// Instance: 4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f
// InstanceOf: klgateway-children-feeding-observation
// Usage: #inline
// Title: "Rikke fuldamning periodestart"
// Description: "Rikke fuldamning periodestart"
// * subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
// * encounter = Reference(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9)
// * code.coding[FBOECode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
// * code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
// * valueCodeableConcept = Tempcodes#77a008dd-21cc-452f-a1ee-ac8d025b7817 "Fuldamning, inklusiv modermælk på flaske"
// * status = #final
// * effectivePeriod.start = 2020-05-05T00:00:00.000Z

// Instance: 23fe85c3-3ff2-4093-89aa-5051bfee9bc2
// InstanceOf: klgateway-children-feeding-observation
// Usage: #inline
// Title: "Rikkes ammestatus ved barselsbesøg, fuldammes"
// Description: "Rikkes status på madning ved barselsbesøg: fuldamning"
// * subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
// * encounter = Reference(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9)
// * code.coding[FBOECode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
// * code.coding[SNOMEDCT] = $SCT#169740003 "Infant feeding method"
// * valueCodeableConcept = Tempcodes#77a008dd-21cc-452f-a1ee-ac8d025b7817 "Fuldamning, inklusiv modermælk på flaske"
// * status = #final
// * effectiveDateTime = 2020-05-07T00:00:00.000Z

// Instance: 8779aeaa-d7ed-4450-8a5f-d685ddc15dc3
// InstanceOf: klgateway-children-bodyweight
// Usage: #inline
// Title: "Rikkes vægt, barselsbesøg"
// Description: "Rikkes vægt, barselsbesøg"
// * subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
// * encounter = Reference(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9)
// * category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
// * category.coding.code = #vital-signs
// * code.coding[SNOMEDCT] = $SCT#27113001
// * code.coding[LOINC] = $LOINC#29463-7
// * valueQuantity.value = 3100
// * valueQuantity.unit = "g"
// * valueQuantity.system = $UCUM
// * valueQuantity.code = #g
// * status = #final
// * effectiveDateTime = 2020-05-07

// //2nd - b

// Instance: 74dcb49e-dd6a-4450-9fb8-85ad0e7bed38
// InstanceOf: klgateway-children-delivery-report
// Description: "DeliveryReport-Lars-2b"
// Usage: #example
// * type = #collection
// * timestamp = 2020-05-09T23:25:12Z

// * entry[+].fullUrl = "https://test.fhir.dk/Patient/e60106e2-413e-46c5-8a3f-62d8e77ce794" //Rikke
// * entry[=].resource = e60106e2-413e-46c5-8a3f-62d8e77ce794

// * entry[+].fullUrl = "https://test.fhir.dk/Encounter/ebaaad51-e77f-4fc1-944a-24b0ace0a9f9" //Barselsbesøg
// * entry[=].resource = ebaaad51-e77f-4fc1-944a-24b0ace0a9f9

// * entry[+].fullUrl = "https://test.fhir.dk/Observation/4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f" //Fundamning, periode-start
// * entry[=].resource = 4ad1eeba-85ca-47f1-bed5-b2b58f53cd9f

// * entry[+].fullUrl = "https://test.fhir.dk/Observation/23fe85c3-3ff2-4093-89aa-5051bfee9bc2" // Fuldamning, status
// * entry[=].resource = 23fe85c3-3ff2-4093-89aa-5051bfee9bc2

// * entry[+].fullUrl = "https://test.fhir.dk/Observation/8779aeaa-d7ed-4450-8a5f-d685ddc15dc3" // Rikkes vægt
// * entry[=].resource = 8779aeaa-d7ed-4450-8a5f-d685ddc15dc3

// * entry[+].fullUrl = "https://test.fhir.dk/Observation/a5118cac-0fbc-4fed-a4b7-df246732c5f7" // Forældre-barn relation, ukendt
// * entry[=].resource = a5118cac-0fbc-4fed-a4b7-df246732c5f7

// Instance: a5118cac-0fbc-4fed-a4b7-df246732c5f7
// InstanceOf: klgateway-children-parent-relationship
// Usage: #inline
// Title: "RikkeChildrenParentRelationship"
// Description: "Rikkes relation til forældre barselsbesøg, data mangler"
// * subject = Reference(e60106e2-413e-46c5-8a3f-62d8e77ce794)
// * encounter = Reference(ebaaad51-e77f-4fc1-944a-24b0ace0a9f9)
// * code.coding[TempCode] = Tempcodes#763c6f21-5467-4713-82fb-716c9d0a1fdf "Forælder-barn-relation"
// * status = #final
// * effectiveDateTime = 2020-07-07T00:00:00.000Z
// * dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown