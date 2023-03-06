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
* $RoleClass #PRN
* $RoleClass #GUARD
* $RoleClass #
* $RoleClass #
