## Scope and usage
This model is used to represent the reporting of childrens data from the health nurse prevention programme in Denmark.

The report is a FHIR Bundle that allows different ressources to be grouped and handled as a collection. The ressources that are grouped in this bundle is the ones defined in this implementation guide. No others are allowed.

For some encounter types, specific observations are required. This report has implemented rules known as FHIR invariants that check, that these conditions holds true. The implemented invariants are:

* If there is an encounter of type 'Besøg ved det ca. 2 måneder gamle barn' then weight and height meassurements should be included in the bundle 

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificere hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|indberetningsrapportIndhold|Hver af indberetningsrapportens indholds-ressourcer|Bundle.entry|