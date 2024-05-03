
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

* entry[+].fullUrl = "https://test.fhir.dk/Observation/ed032dee-7f27-49c3-ac7e-0330173dc04c" // ernæring
* entry[=].resource = ed032dee-7f27-49c3-ac7e-0330173dc04c

* entry[+].fullUrl = "https://test.fhir.dk/Observation/f4306eb1-d999-41d8-bc02-7b33703038f4" // kommunikation
* entry[=].resource = f4306eb1-d999-41d8-bc02-7b33703038f4

* entry[+].fullUrl = "https://test.fhir.dk/Observation/b1767807-438e-403d-ae79-1f2f81029867" //Motorik
* entry[=].resource = b1767807-438e-403d-ae79-1f2f81029867

* entry[+].fullUrl = "https://test.fhir.dk/Observation/bf4fd089-7f27-4b86-9575-140519c0bb85" //fysisk aktivitet
* entry[=].resource = bf4fd089-7f27-4b86-9575-140519c0bb85

* entry[+].fullUrl = "https://test.fhir.dk/Observation/241aec34-ae18-4746-abbc-35a0b9a3064f" //Hørelse
* entry[=].resource = 241aec34-ae18-4746-abbc-35a0b9a3064f

* entry[+].fullUrl = "https://test.fhir.dk/Observation/9925d07b-566a-43dd-9a37-6ed55c363e84" //Syn
* entry[=].resource = 9925d07b-566a-43dd-9a37-6ed55c363e84

* entry[+].fullUrl = "https://test.fhir.dk/Observation/52fe56d9-748d-4638-a1c9-42ed92f9cc5c" //Søvn, let forstyrret
* entry[=].resource = 52fe56d9-748d-4638-a1c9-42ed92f9cc5c

* entry[+].fullUrl = "https://test.fhir.dk/Observation/100f7033-30e1-4a7d-8bb2-ba13909bd240" //naturininkontinens
* entry[=].resource = 100f7033-30e1-4a7d-8bb2-ba13909bd240

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/067d90b6-751f-4d8e-945b-f501a8acbf54" //'Vejledning ved udskillelsesproblematik'
* entry[=].resource = 067d90b6-751f-4d8e-945b-f501a8acbf54

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

Instance: ed032dee-7f27-49c3-ac7e-0330173dc04c
InstanceOf: klgateway-children-nutrition
Usage: #inline
Title: "Lars kost, indskoling"
Description: "Lars kost indskoling"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* code.coding[TempCode] = Tempcodes#e61e4dab-54bb-4bf4-9b76-8d991cf4de08 "Ernæring"
* valueCodeableConcept.coding = Tempcodes#78dcf013-8ae9-4541-b175-100cde77a9f0 "Almindeligt kostindtag"
* status = #final
* effectiveDateTime = 2021-10-06


Instance: f4306eb1-d999-41d8-bc02-7b33703038f4
InstanceOf: klgateway-children-communication
Usage: #inline
Title: "Lars kommunikation indskoling"
Description: "Lars kommunikation indskoling"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* code.coding[TempCode] = Tempcodes#653c2b0b-bb64-4906-888b-aea6fef3c3f8 "Kommunikation"
* valueCodeableConcept = Tempcodes#042d522d-0abe-46eb-a958-6e235b5d5408 "Kommunikerer alderssvarende" 
* status = #final
* effectiveDateTime = 2021-10-06

Instance: b1767807-438e-403d-ae79-1f2f81029867
InstanceOf: klgateway-children-motor-function
Usage: #inline
Title: "Lars motorik indskoling"
Description: "Lars motorik indskoling"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* code.coding[TempCode] = Tempcodes#e04f2ca1-888a-4671-a97a-371b525cd2a3 //	Motorik
* valueCodeableConcept = Tempcodes#d5b876e1-a86c-4768-b46d-cd795eaa89e4 "Alderssvarende motorik"
* status = #final
* effectiveDateTime = 2021-10-06

Instance: bf4fd089-7f27-4b86-9575-140519c0bb85
InstanceOf: klgateway-children-physical-activity
Usage: #inline
Title: "Lars fysisk aktivitet indskoling"
Description: "Lars fysisk aktivitet indskoling"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* code.coding[TempCode] = Tempcodes#b331fe02-a781-4abd-b6db-9331d6a69b15 "Fysisk aktivitet"
* valueCodeableConcept = Tempcodes#05086dad-8718-4a6c-b096-54c7101d0b2c "Fysisk aktiv"
* status = #final
* effectiveDateTime = 2021-10-06

Instance: 241aec34-ae18-4746-abbc-35a0b9a3064f
InstanceOf: klgateway-children-hearing
Usage: #inline
Title: "Lars hørelse indskoling"
Description: "Lars hørelse indskoling"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* code.coding[TempCode] = Tempcodes#a22c4b53-b622-4394-ba13-910a7b0d7b0d "Hørelse"
* valueCodeableConcept = Tempcodes#9628db65-7460-4ecc-bbb1-48c0ac4b3f02 "Intet problem med hørelse målt"
* status = #final
* effectiveDateTime = 2021-10-06

Instance: 9925d07b-566a-43dd-9a37-6ed55c363e84
InstanceOf: klgateway-children-sight
Usage: #inline
Title: "Lars syn indskoling"
Description: "Lars syn indskoling"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* code.coding[TempCode] = Tempcodes#01fddd46-ed7c-423d-b191-ffdd977dd61e "Syn"
* valueCodeableConcept = Tempcodes#bdcb835d-6ef6-4c4f-9fdf-94c3ebd17182 "Intet problem med syn målt"
* status = #final
* effectiveDateTime = 2021-10-06

Instance: 52fe56d9-748d-4638-a1c9-42ed92f9cc5c
InstanceOf: klgateway-children-sleep
Usage: #inline
Title: "Lars søvn indskoling"
Description: "Lars søvn indskoling"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* code.coding[TempCode] = Tempcodes#73f981f8-455a-4158-b435-7c6d83ab84da "Søvn"
* valueCodeableConcept = Tempcodes#d13ad530-d8f6-4933-be18-bb77e2334f9f	"Let forstyrret søvn"
* status = #final
* effectiveDateTime = 2021-10-06

Instance: 100f7033-30e1-4a7d-8bb2-ba13909bd240
InstanceOf: klgateway-children-exam-result
Usage: #inline
Title: "Lars naturininkontinens"
Description: "Lars naturininkontinens"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* encounter = Reference(9a97ee62-ada2-45f6-8559-99477c028eb4)
* code.coding[SNOMEDCT] = $SCT#363788007 // "Clinical history/examination observable"
* valueCodeableConcept = Tempcodes#54f42eb5-18f9-4e82-98e0-1c83988189b9 "Naturininkontinens"
* status = #final
* effectiveDateTime = 2021-10-06

Instance: 067d90b6-751f-4d8e-945b-f501a8acbf54
InstanceOf: klgateway-children-intervention
Usage: #inline
Title: "Lars behovsindsats, Vejledning ved udskillelsesproblematik"
Description: "Lars behovsindsats, Vejledning ved udskillelsesproblematik"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* period.start = 2021-10-06
* intent = #plan
* status = #active
* activity.detail.status = #unknown
* activity.detail.code.coding = Tempcodes#bc2fc09c-594b-40f5-bfd4-b4da0307fb64 "Vejledning ved udskillelsesproblematik"
* activity.detail.reasonCode.coding = Tempcodes#54f42eb5-18f9-4e82-98e0-1c83988189b9 "Naturininkontinens"


//2nd - a

Instance: 4cda6c3c-856c-4fe3-ac90-9b6f968207c3
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Lars-2a"
Usage: #example
* type = #collection
* timestamp = 2021-10-09T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/4ced31e7-f852-4bad-a320-fe2a02640434" //Lars
* entry[=].resource = 4ced31e7-f852-4bad-a320-fe2a02640434

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/c170882f-0e2f-4b89-ad82-3b4b57fd4c2b" //Behovskontakt
* entry[=].resource = c170882f-0e2f-4b89-ad82-3b4b57fd4c2b

* entry[+].fullUrl = "https://test.fhir.dk/Location/d1a03c42-7fdf-43da-9132-404a321c30b8" //Skolen i holbæk
* entry[=].resource = d1a03c42-7fdf-43da-9132-404a321c30b8

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/a0a6a0f4-f58c-4cc8-b2af-cc636aaceb3e" //Vejledning overvægt'
* entry[=].resource = a0a6a0f4-f58c-4cc8-b2af-cc636aaceb3e

Instance: c170882f-0e2f-4b89-ad82-3b4b57fd4c2b
InstanceOf: klgateway-children-encounter
Title: "Behovskontakt Lars"
Usage: #inline
Description: "Behovskontakt Lars"
* type = $FBOE#606c6585-444b-4ecd-885c-2ee59dc33f32 "Behovsbaseret kontakt med skolesundhedsplejersken"
* period.start = 2021-10-09T11:15:00.000Z
* status = $EncounterStatus#finished
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* class = $V3ACTCODES#AMB
* location.location = Reference(d1a03c42-7fdf-43da-9132-404a321c30b8)

Instance: a0a6a0f4-f58c-4cc8-b2af-cc636aaceb3e
InstanceOf: klgateway-children-intervention
Usage: #inline
Title: "Lars behovsindsats, overvægt"
Description: "Lars behovsindsats, overvægt"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* period.start = 2021-10-06
* intent = #plan
* status = #active
* activity.detail.status = #unknown
* activity.detail.code.coding = Tempcodes#b45c3d0e-7d19-4c75-bdf1-fe838b439b86 "Opsporing og vejledning ved overvægt"

Instance: 9a966368-052f-42e5-87fa-e57d9b8cbf2c
InstanceOf: klgateway-children-delivery-report
Description: "DeliveryReport-Lars-2b"
Usage: #example
* type = #collection
* timestamp = 2021-10-09T23:25:12Z

* entry[+].fullUrl = "https://test.fhir.dk/Patient/4ced31e7-f852-4bad-a320-fe2a02640434" //Lars
* entry[=].resource = 4ced31e7-f852-4bad-a320-fe2a02640434

* entry[+].fullUrl = "https://test.fhir.dk/Encounter/c170882f-0e2f-4b89-ad82-3b4b57fd4c2b" //Behovskontakt
* entry[=].resource = c170882f-0e2f-4b89-ad82-3b4b57fd4c2b-v2

* entry[+].fullUrl = "https://test.fhir.dk/Location/d1a03c42-7fdf-43da-9132-404a321c30b8" //Skolen i holbæk
* entry[=].resource = d1a03c42-7fdf-43da-9132-404a321c30b8

* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/a0a6a0f4-f58c-4cc8-b2af-cc636aaceb3e" //Vejledning overvægt'
* entry[=].resource = a0a6a0f4-f58c-4cc8-b2af-cc636aaceb3e-v2

Instance: c170882f-0e2f-4b89-ad82-3b4b57fd4c2b-v2
InstanceOf: klgateway-children-encounter
Title: "Behovskontakt Lars"
Usage: #inline
Description: "Behovskontakt Lars"
* id = "c170882f-0e2f-4b89-ad82-3b4b57fd4c2b"
* type = $FBOE#606c6585-444b-4ecd-885c-2ee59dc33f32 "Behovsbaseret kontakt med skolesundhedsplejersken"
* period.start = 2021-10-09T11:15:00.000Z
* status = $EncounterStatus#entered-in-error
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* class = $V3ACTCODES#AMB
* location.location = Reference(d1a03c42-7fdf-43da-9132-404a321c30b8)

Instance: a0a6a0f4-f58c-4cc8-b2af-cc636aaceb3e-v2
InstanceOf: klgateway-children-intervention
Usage: #inline
Title: "Lars behovsindsats, overvægt"
Description: "Lars behovsindsats, overvægt"
* id = "a0a6a0f4-f58c-4cc8-b2af-cc636aaceb3e"
* subject = Reference(4ced31e7-f852-4bad-a320-fe2a02640434)
* period.start = 2021-10-06
* intent = #plan
* status = #entered-in-error
* activity.detail.status = #unknown
* activity.detail.code.coding = Tempcodes#b45c3d0e-7d19-4c75-bdf1-fe838b439b86 "Opsporing og vejledning ved overvægt"