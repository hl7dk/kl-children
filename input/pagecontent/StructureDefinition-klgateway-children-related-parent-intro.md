### Scope and usage
KLGatewayChildrenRelatedParent is used to identify the relationship between a child and its parents. Include Citizen and RelatedPerson resources for the parents only when relevant to the child’s report.

In this implementation:

* RelatedPerson.patient refers to the child.
* RelatedPerson.relationship contains a code that specifies the relationship type. The relationship code is always 'PRN' for parent.

It might seem counter intuitive that this resource does not have a cpr identifier, or other identifier. However, such identifiers are stored in the Citizen resources of the parents, which links back to the RelatedPerson resource. Therefore, duplicating this information in the RelatedPerson resource is unnecessary.

The RelatedPerson.active attribute is optional and assumed to be true unless otherwise specified. Setting RelatedPerson.active to false should only be used to indicate that the entry was made in error and that the relationship does not exist in the municipal system and should not have been recorded.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter, der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|forælderHarBarn|Relation til den borger, der er barn af denne forælder|RelatedPerson.patient|
|forælderType|Typen af relation (som altid er sat til forælder)|ReleatedPerson.relationship|
|forældrerelationHarAktivJournal|Angiver om relationen er sand i den journalførende organisation eller ej|RelatedPerson.active|