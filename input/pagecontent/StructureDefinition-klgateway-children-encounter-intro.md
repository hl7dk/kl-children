### Scope and usage
KLGatewayChildrenEncounter is used whenever a child with or without family members meet the health nurse (sundhedsplejerske) in a Danish municipality context.

The Encounter.type.coding attribute is used to classify the type of activities that occur at the encounter. The encounters have been classified according to the guidance document from the Health Authorities (Sundhedsstyrelsen).

* Graviditetsbesøg
* Barselsbesøg
* Etableringsbesøg
* Andet besøg inden første måned
* Besøg hos det ca. 2 måneder gamle barn
* Besøg hos det 4-6 måneder gamle barn
* Besøg hos det 8-11 måneder gamle barn
* Almindelig forebyggende småbørnskontakt 
* Behovskontakt med småbørnssundhedsplejen
* Indskolingsundersøgelse
* Undersøgelse i mellemtrin, med måling
* Udskolingsundersøgelse
* Almindelig forebyggende skolebørnskontakt
* Behovskontakt med skolesundhedsplejen

Sometimes, it might be difficult to apply the correct type to an encounter. The following guiding principles exists:
* The encounter in which most of the activities of a certain visit or examination (as described in the guidance document) is carried out, is classified as that type of visit or examination. This holds true even if the guidance document describes this encounter or examination for a child of a certain age, and the child examined is in fact younger or older. (fx hvis man besøger et 12 måneder gammelt barn, og udfører de ting sundhedsstyrelsen vejledning beskriver for 'Besøg hos det 8-11 måneder gamle barn', så klassificeres det som 'Besøg hos det 8-11 måneder gamle barn'.)
* If certain mandatory activities are not carried out, and another encounter is planned and completed to account for this, classify this secondary encounter as 'Almindelig forebyggende småbørnskontakt' or 'Almindelig forebyggende skolebørnskontakt'.
* If local encounter types exists, report them as the most specific type which is still true. Be especially aware if the reason for the encounter is prevention, or a specific need in the family. E.g. a municipality may have a specific encounter type to help mothers that have problems with breastfeeding. These should be reported as 'Behovskontakt med småbørnssundhedsplejen'. If the municipality has regular extra visits with all children in the 3rd month, they should be reported as 'Almindelig forebyggende småbørnskontakt'.

In the context of the children database, only encounters actually carried out should be documented. Consequently, for most intends and purposes the encounter.status should be 'finished'. However, if errors have been reported use the 'entered-in-error' status as described by the FHIR-documentation.

Encounter.class is mandatory in FHIR. In Danish municipalities the values are used as follows.
* Visits in citizens homes have the code 'HH' Home health, the code is also used for services that are not strictly health related e.g. help with cleaning. This code is also used, even if the activities stretch outside the citizens residence e.g. a physiotherapist that want to see a citizen walk outside, or a social worker helping with shopping activities.
* Sessions where the citizens visit municipality facilities e.g. for training or health prevention have the code 'AMB' Ambulatory.
* Encounters delivered as a screen visit should be registered as 'Skærmbesøg'.
* Encounters delivered using a phone should be registered as 'Telefonisk'

For school nurse encounters, the Danish school-code should be registered as well, using Encounter.location that relates to a Location resource. Note that the school code should be registered even though the encounter does not take place at the school. FHIR Locations can be used to describe a more abstract location, and as such the school nurse works in the context of a school when seeing the child. If the child does not have a school affiliation, a school-code should not be registered.

The time of the encounter is documented in Encounter.period.start, and it is mandatory. The end time is not mandatory. If Encounter.period.end is reported it may be either planned end time or actual end time.

Encounter.subject relates to the subject that the encounter is about. In the context of the children database, primarily the children's encounters are documented. This should be respected even though many visits are directed at the family as a whole. However, before the child is born, this is not possible.  For pregnancy visits/'Graviditetsbesøg', the encounter is linked to one of the parents (typically the mother). For need-based encounters, they should be linked to citizen who has the intervention, whether this is the child, one of the parents or both. Consequently, one visit might result in more than one encounter if both parent and child has a need-based intervention going on.

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
|borgerkontaktBaseretPå|Den behovsindsats, der er grunden til at denne kontakt udføres|Encounter.extension:basedOnIntervention|