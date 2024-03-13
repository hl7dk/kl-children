### Scope and usage
KLGatewayChildrenMentalState is used to document how children in school self-report that they thrive. Note that two instanses should be reported if both the general happines, and school specific happines is needed.

Observation.code.coding, holds the valid value for the types of observations allowed. It is bound to a fixed SNOMED CT code 'Emotion'. (That 'Emotion' is the observation code might be counterintuitive, but when children are asked if they are happy in their day to day life, the observable interpreted is actually a feeling, and so the observation code becomes 'Emotion')

Observation.value[x] is a coded value Observation.valueCodeableConcept, which should be drawn from the required ValueSet. The valid values are either related to how happy the child is generally, or how happy the child is at school.

The time of the observation is documented in Observation.effective[x]. 

Observation.subject holds the reference to the child, who is observed. Observation.encounter holds the reference to the encounter in which the observation is performed.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly. To indicate missing data, Observation.dataAbsentReason can be used as well. 

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|mentalStatusKode|Klasse som udtrykker, hvad der observeres.|Observation.code.coding|
|mentalStatusResultat|Resultatet af observationen.|Observation.value[x]|
|mentalStatusTid|Tidspunkt for observationen.|Observation.effective|
|mentalStatusSubjekt|Den borger, for hvem der er foretaget en observation.|Observation.subject|
|mentalStatusKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|mentalStatusStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|
|mentalStatusMangler|Klasse, der udtrykker hvorfor data mangler|Observation.dataAbsentReason|
