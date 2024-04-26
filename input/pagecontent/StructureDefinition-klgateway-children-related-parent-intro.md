### Scope and usage
KLGatewayChildrenRelatedParent is used to identify the relationship between a child and its parents. Citizen and relatedPerson resources for the parents should only be includes when and if, they are relevant for the child reporting.

RelatedPerson.patient holds a reference to the child. ReleatedPerson.relationship holds a code that defines the kind of relationship. In this implementation guide the relationship is always 'PRN' for parent.

It may be counter intuitive that this resource does not have a cpr identifier, or other identifier. However, the citizen resource of the parent holds this information and references the relatedPerson resource, so there is no need to repeat this information.

RelatedPerson.active is optional and assumed true, if not given. RelatedPerson.active = false is used to report entered-in-error. However, this option should only be used, if the relationship is fully unknown to the municipality system, and should never have been in the system at all.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter, der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|forælderHarBarn|Relation til den borger, der er barn af denne forælder|RelatedPerson.patient|
|forælderType|Typen af relation (som altid er sat til forælder)|ReleatedPerson.relationship|
|forældrerelationHarAktivJournal|Angiver om relationen er sand i den journalførende organisation eller ej|RelatedPerson.active|