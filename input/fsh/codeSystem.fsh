CodeSystem: Tempcodes
Id: Tempcodes
Title: "Tempcodes"
Description: "Tempcodes to be implemented in KL-term"
* #6c2a4f15-d775-47f3-9868-b26fbff9ff8b "Forebyggelsesbesøg af småbørnssundhedsplejen"
* #6c2a4f15-d775-47f3-9868-b26fbff9ff8b #d3c00541-f1d3-4c43-b5fc-16e8914ca1df "Graviditetsbesøg"
* #6c2a4f15-d775-47f3-9868-b26fbff9ff8b #7d35a193-e808-4e77-b361-6c0d114d021f "Barselsbesøg"
* #6c2a4f15-d775-47f3-9868-b26fbff9ff8b #b4bf6058-502a-4d64-bb8e-369661f43b47 "Etableringsbesøg"
* #6c2a4f15-d775-47f3-9868-b26fbff9ff8b #563c4174-f451-4c87-8db8-8d5472ca7ff6 "Andet besøg i barnets første levemåned"
* #6c2a4f15-d775-47f3-9868-b26fbff9ff8b #51f30d1c-d60e-4e3e-ac22-ec9712ea962d "Besøg ved det ca. 2 måneder gamle barn"
* #6c2a4f15-d775-47f3-9868-b26fbff9ff8b #58ff370b-a775-4bec-b24a-91604e0a5fe7 "Besøg ved det 4-6 måneder gamle barn"
* #6c2a4f15-d775-47f3-9868-b26fbff9ff8b #3f3e6489-31bd-44cf-9920-3c632868feb7 "Besøg ved det 8-11 måneder gamle barn"
* #4b039ba1-4005-42e6-b672-09b81ad7578a "Behovsbesøg af småbørnssundhedsplejen" "Sundhedsplejens hjemmebesøg i barnets første 5 leveår efter behov"
* #b30f139c-fac5-416e-b84a-a3429f0222c2 "Anden kontakt med småbørnssundhedsplejen ifm den almindelige forebyggende småbørnsindsats"
* #b30f139c-fac5-416e-b84a-a3429f0222c2 #644dd6c1-5c80-4412-ae59-f6e0767cead5 "Kontakt med sundhedsplejen i åben konsultation"
* #b30f139c-fac5-416e-b84a-a3429f0222c2 #a08d3cf6-58ef-4631-8893-3fa44bd67363 "Kontakt med sundhedsplejen ifm. gruppeaktivitet"
* #9f3d853c-88d3-47e9-92a1-c7bbe0f9b4eb "Forebyggelseskontakt i skolesundhedsplejen"
* #9f3d853c-88d3-47e9-92a1-c7bbe0f9b4eb #c06ed6f1-be9d-460e-a45e-34821bcbd533 "Indskolingsundersøgelse"
* #9f3d853c-88d3-47e9-92a1-c7bbe0f9b4eb #0ddb3661-51da-471f-94d7-2a50b81f5fc6 "1. klasses undersøgelse"
* #9f3d853c-88d3-47e9-92a1-c7bbe0f9b4eb #d01bcb90-2b29-44f4-834c-191d6dd4a08a "Undersøgelse i mellemtrin, med måling"
* #9f3d853c-88d3-47e9-92a1-c7bbe0f9b4eb #dd766967-4d02-4c17-8ed3-021852785fdf "Udskolingsundersøgelse"
* #606c6585-444b-4ecd-885c-2ee59dc33f32 "Behovsbaseret kontakt med skolesundhedsplejersken"
* #17f5f9fa-3e1c-42fe-9ef3-178bc7900f67 "Anden kontakt med skolesundhedsplejersken ifm den almindelige forebyggende skolebørnsindsats"
* #be128c20-851d-4217-b8df-744d8af39cac "For det meste meget glad" "Barnet vurderer selv for det meste at være meget glad"
* #6bea1014-8e30-40e7-9274-2b02376c0b1b "For det meste glad" "Barnet vurderer selv for det meste at være glad"
* #2c945a43-a07b-4b26-b4cc-205ba15a1251 "For det meste midt imellem" "Barnet vurderer selv for det meste at være midt imellem glad og ikke glad"
* #10edfc52-3632-453b-8db1-af6691049885 "For det meste ikke glad" "Barnet vurderer selv for det meste ikke at være glad"
* #9b4b5194-cf7f-4274-a691-734c24adb0b7 "For det meste meget glad i skolen" "Barnet vurderer selv for det meste at være meget glad i skolen"
* #5dc857f6-1220-4762-a718-31a6101b5d61 "For det meste glad i skolen" "Barnet vurderer selv for det meste at være glad i skolen"
* #2e026475-a2ec-45e3-92d8-f0bed307cceb "For det meste midt imellem i skolen" "Barnet vurderer selv for det meste at være midt imellem glad og ikke glad i skolen"
* #822dffb2-3b29-4f86-9784-757954d6a047 "For det meste ikke glad i skolen" "Barnet vurderer selv for det meste ikke at være glad i skolen"


ValueSet: EncounterTypes
Id: EncounterTypes
Title: "EncounterTypes"
Description: "Extension on encountertype valueset, to be implemented in KL-term and FKI, does not use exciting codes only those specific to childrens nursing"
* ^experimental = false
* include codes from system Tempcodes where concept is-a #6c2a4f15-d775-47f3-9868-b26fbff9ff8b
* include codes from system Tempcodes where concept is-a #4b039ba1-4005-42e6-b672-09b81ad7578a
* include codes from system Tempcodes where concept is-a #b30f139c-fac5-416e-b84a-a3429f0222c2
* include codes from system Tempcodes where concept is-a #9f3d853c-88d3-47e9-92a1-c7bbe0f9b4eb
* include codes from system Tempcodes where concept is-a #606c6585-444b-4ecd-885c-2ee59dc33f32
* include codes from system Tempcodes where concept is-a #17f5f9fa-3e1c-42fe-9ef3-178bc7900f67

ValueSet: ParentTypes
Id: ParentTypes
Title: "ParentTypes"
Description: "Limitation on HL7 role class to only represent parent-relationships, as accepted in the children data-set"
* $RoleClass#PRN
//* $RoleClass#GUARD

ValueSet: BodyheightSCTobservablesChildren
Title: "BodyheightSCTobservablesChildren"
Description: "SNOMED CT observables for length/height"
* $SCT#248334005 //|Length of body (observable entity)|
* $SCT#248333004 //|Standing height (observable entity)|

ValueSet: BodyweightSCTobservablesChildren
Title: "BodyweightSCTobservablesChildren"
Description: "SNOMED CT observables for weight"
* $SCT#425024002	// Body weight without shoes

ValueSet: ObservationSCTChildren
Title: "SCTobservablesChildren"
Description: "SNOMED CT observables for children observations"
* $SCT#425024002	// Body weight without shoes
* $SCT#248334005 //|Length of body (observable entity)|
* $SCT#248333004 //|Standing height (observable entity)|
* $SCT#229819007 //Tobacco use and exposure (observable entity)
* $SCT#169740003 //|Infant feeding method|
* $SCT#285854004 //|Emotion (observable entity)|
* $SCT#363812007 //|Hovedomkreds|

ValueSet: ObservationResultsChildren
Title: "Observation resultcodes"
Description: "SNOMED CT finding codes to express the result of children observations"
* $SCT#228524006 //|Exposed to tobacco smoke at home (finding)|
* $SCT#110483000 //|Tobacco user (finding)|
* $SCT#711563001 //|No known exposure to tobacco smoke| /(normalt fund. Overvej at lade udgå)
* $SCT#1145307003 //|Exclusively breastfed| (EffectivePeriod)
* $SCT#169743001 //|Breastfeeding with supplement| (EffectivePeriode)
* $SCT#169746009 //|Breastfeeding stopped| (EffectiveTime)
* Tempcodes#be128c20-851d-4217-b8df-744d8af39cac //"for det meste meget glad" "Barnet vurderer selv for det meste at være meget glad"
* Tempcodes#6bea1014-8e30-40e7-9274-2b02376c0b1b //"for det meste glad" "Barnet vurderer selv for det meste at være glad"
* Tempcodes#2c945a43-a07b-4b26-b4cc-205ba15a1251 //"for det meste midt imellem" "Barnet vurderer selv for det meste at være midt imellem glad og ikke glad"
* Tempcodes#10edfc52-3632-453b-8db1-af6691049885 //"for det meste ikke glad" "Barnet vurderer selv for det meste ikke at være glad"
* Tempcodes#9b4b5194-cf7f-4274-a691-734c24adb0b7 //"for det meste meget glad i skolen" "Barnet vurderer selv for det meste at være meget glad i skolen"
* Tempcodes#5dc857f6-1220-4762-a718-31a6101b5d61 //"for det meste glad i skolen" "Barnet vurderer selv for det meste at være glad i skolen"
* Tempcodes#2e026475-a2ec-45e3-92d8-f0bed307cceb //"for det meste midt imellem i skolen" "Barnet vurderer selv for det meste at være midt imellem glad og ikke glad i skolen"
* Tempcodes#822dffb2-3b29-4f86-9784-757954d6a047 //"for det meste ikke glad i skolen"
//* $SCT#162339002 //|normal hørelse| (normalt fund, overvej at lade udgå)
//* $SCT#134376008 //|abnormt fund ved høreprøve på højre side|
//* $SCT#134375007 //|abnormt fund ved høreprøve på venstre side|
//* $SCT#134374006 //|Høreprøve abnorm bilateralt|
//* $SCT#164728001 //|abnorm synstest|
//* $SCT#45089002 //|Normalt syn|(normalt fund, overvej at lade udgå)
* $SCT#160245001  //"No current problems or disability"

ValueSet: ObservationUnitsChildren
Title: "ObservationUnitsChildren"
Description: "UCUM units for children observations"
* $UCUM#cm
* $UCUM#g

ValueSet: IndicatorCodesChildren
Title: "IndicatorCodesChildren"
Description: "SNOMED CT indicator-observables for children"
* $SCT#363871006 //|Mental state (observable entity)|
* $SCT#364018001 //|Hearing observable (observable entity)|
* $SCT#415823006 //|træk vedr. syn|

ValueSet: IndicatorResultsChildren
Title: "IndicatorResultsChildren"
Description: "Result values for children indicators"
* $SCT#228150001 //|mental helbredssvækkelse| (bemærkninger til mors psykiske tilstand)
* $SCT#737368006 //|Caregiver-child relationship problem| (bemærkning til samspil og kontakt)
* $SCT#247806005 //|dårligt tilpas| (Eller 276247002 |misforhold vedrørende sindsstemning|) (Bemærkning til signaler og reaktioner)
* $SCT#164728001 //|abnorm synstest|
* $SCT#313203003 //|Hearing test abnormal (finding)|
* $SCT#160245001  //"No current problems or disability"
