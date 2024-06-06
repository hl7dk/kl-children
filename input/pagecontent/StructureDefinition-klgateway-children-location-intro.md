### Scope and usage
KLGatewayChildrenLocation is used to identify the school of the child.

Location.identifier holds the Danish institution identifier. Only schools are permitted, which result in Location.type always having the value 'SCHOOL'.

Location.status is optional and assumed active, if not given. Location.status = inactive is used to report entered-in-error. However, this option should only be used, if the school is fully unknown to the municipality system, and should never have been in the system at all.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter, der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|Lokationsid|Lokations-id, her altid skolekoden, som kan findes i institutionsregisteret|Location.identifier|
|Lokationstype|Typen af lokation (som altid er sat til skole)|Location.type|
|Lokationsstatus|Angiver om lokationen er aktiv |Location.status|