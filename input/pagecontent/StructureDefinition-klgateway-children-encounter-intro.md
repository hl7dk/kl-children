### Scope and usage
klgateway-children-encounter is used whenever a child with or without family members meet the health nurse (sundhedsplejerske) in a Danish municipality context. The CommonCareSocialEncounters are e.g.
* Home visits in citizens homes by health nurses
* Open consultations
* Specialized service for specific groups 

The Encounter.type.coding attribute is used to classify the type of activities that occur at the encounter. The encounters have been classified according to the guidance document from the Health Authorities (Sundhedsstyrelsen).

* Forebyggelsesbesøg af småbørnssundhedsplejen
 - Graviditetsbesøg
 - Barselsbesøg
 - Etableringsbesøg
 - Andet besøg i barnets første levemåned
 - Besøg ved det ca. 2 måneder gamle barn
 - Besøg ved det 4-6 måneder gamle barn
 - Besøg ved det 8-11 måneder gamle barn
* Behovsbesøg af småbørnssundhedsplejen
* Anden kontakt med småbørnssundhedsplejen ifm den almindelige forebyggende småbørnsindsats
 - Kontakt med sundhedsplejen i åben konsultation
 - Kontakt med sundhedsplejen ifm. gruppeaktivitet"
* Forebyggelseskontakt i skolesundhedsplejen
 - Indskolingsundersøgelse
 - første klasses undersøgelse
 - Undersøgelse i mellemtrin, med måling
 - Udskolingsundersøgelse
* Behovsbaseret kontakt med skolesundhedsplejersken"
* Anden kontakt med skolesundhedsplejersken ifm den almindelige forebyggende skolebørnsindsats"

In the context of the children database, only encounters actually carried out should be documented. Consequently, for most intends and purposes the encounter.status should be 'finished'. However, if errors have been repported use the 'entered-in-error' status as described by the FHIR-documentation.

Encounter.class is mandatory in FHIR. In Danish municipalities the values are used as follows.
* Visits in citizens homes have the code 'HH' home health, the code is also used for services that are not strictly health related e.g. help with cleaning. This code is also used, even if the activities stretch outside the citizens residence e.g. a physiotherapist that want to see a citizen walk outside, or a social worker helping with shpping activities.
* Sessions where the citizens visit municipality facilities e.g. for training or health prevention have the code "AMB" ambulatory.
* For telehealth/telecare encounters, where the patient is contacted by telephone, by teleconference or e-mail, the code is 'VR' virtual.

The time of the encounter is documented in Encounter.period.start, and is mandatory. The endtime is not mandatory.

Encounter.subject relates to the subject that the encounter is about. In the context of the childrens database, only the childrens encounters are documented. This should be respected even though many visits are directed at the family as a whole.  

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificere hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|borgerkontakttype|Klasse der udtrykker typen af aktivitet der gennemføres ved kontakten|Encounter.type.coding|
|borgerkontaktstatus|Klasse der indikerer om kontakten er igangværende, eller om dokumentationen repræsentere en fremtidig intention eller er historisk|Encounter.status|
|borgerkontaktklasse|Klasse, der udtrykker en generel kategori for kontakten, som rækker ud over den kommunale kontekst.|Encounter.class|
|borgerkontaktstart|Kontaktens start, eller planlagte start|Encounter.period.start|
|borgerkontaktslut|Kontaktens sluttidspunkt, eller planlagte sluttidspunkt|Encounter.period.end|
|borgerkontaktsubjekt|Den borger kontakten vedrører|Encounter.subject|