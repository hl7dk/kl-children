### Scope and usage
KLGatewayChildrenRelatedParent is used to identify the relationship between a child and its parents. Citizen and relatedPerson resources for the parents should only be includes when and if, they are relevant for the child reporting.

RelatedPerson.patient holds a reference to the child. ReleatedPerson.relationship holds a code that defines the kind of relationship e.g. 'parent' or 'mother'.

It may be counterinituitive that this ressource does not have a cpr numer, or other identifier. However, the citizen ressource of the parent holds this information and references the relatedPerson ressource, so there is no need to repeat this information.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter, der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|forælderHarBarn|Relation til den borger, der er barn af denne forælder|RelatedPerson.patient|
|forælderType|Typen af forældrerelation|ReleatedPerson.relationship|

