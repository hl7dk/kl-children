### Scope and usage
KLGatewayChildrenCitizen is used to identify the subject of a delivery report by the personal id number (CPR-nummer), which should go into Patient.identifier. The personal id number must be an official Danish CPR-nummer without hyphen. 

The model also identifies the managing organization that acts as the custodian of the reported data. The managing organization is identified by its official SOR code. The SOR codes should be documented in Patient.managingOrganization.identifier.

For most municipalities the SOR code will be the code for the municipality, but if a municipality delivers services in different departments using different record systems (thus having multiple custodians) the SOR codes of the department that acts as custodian is used.

Citizen resources can be used to identify both child and parents. However, the parents should only be includes when and if, they are relevant for the child reporting e.g. when reporting the mental state of the mother. In this case, a relatedPerson resource should also be included and referenced using Patient.link.

Patient.link is a reference to a relatedPerson object. In the context of the childrens database, it is used to link a grown-up citizen with the relatedPerson resource. The relatedPerson resource defines that this grown-up is actually the child's parent. In other words, a citizen object cannot hold information about relationships between citizens, for that we use the relatedPerson resource.

Patient.active is optional and assumed true, if not given. Patient.active = false is used to report  entered-in-error. However, this option should only be used, if the patient is fully unknown to the municipality system, and should never have been in the system at all.


### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter, der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|borgersCpr|Officielt cpr-nummer på borgeren|Patient.identifier|
|borgersJournalførendeOrganisation|Organisation som ejer journalen med oplysninger|Patient.managingOrganization.identifier|
|borgerErSammePersonSom|Reference til et pårørende-objekt, som er samme person som denne borger|Patient.link|
|borgerHarAktivJournal|Angiver om borger har en aktiv journal i den journalførende organisation eller ej|Patient.active|
