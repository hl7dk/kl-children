### Scope and usage
KLGatewayChildrenHeadCircumference is used to document childrens head circumference.

 Observation.code.coding holds the valid values for the types of obervations allowed. It is bound to a mandatory LOINC code: 9843-4 'Head Occipital-frontal circumference', and a SNOMED CT code 363812007 'Head circumference (observable entity)'.

The Observation.value[x] is a valueQuantity. The unit is drawn from UCUM and is always 'cm'.

The effective time of the observation is documented in Observation.effective[x].

Observation.category is populated to conform to international vital-sign standards. The value should always be 'vital-signs'.

Observation.subject holds the reference to the child. Observation.encounter holds the reference to the encounter in which the observation is performed.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly. To indicate missing data, Observation.dataAbsentReason can be used as well. 

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|hovedomkredsKode|Klasse som udtrykker, hvad der observeres.|Observation.code.coding|
|hovedomkredsResultat|Resultatet af observationen.|Observation.value[x]|
|hovedomkredsEnhed|Enheden på observationsresultatet.|Observation.valueQuantity.unit|
|hovedomkredsTid|Tidspunkt for observationen.|Observation.effective|
|hovedomkredsKategori|Klasse der udtrykker en overordnet katagori for hvad der observeres|Observation.category|
|hovedomkredsSubjekt|Den borger, for hvem der er foretaget en observation.|Observation.subject|
|hovedomkredsKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|hovedomkredsStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|
|hovedomkredsMangler|Klasse, der udtrykker hvorfor data mangler|Observation.dataAbsentReason|
