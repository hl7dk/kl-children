### Scope and usage
KLGatewayChildrenBodyHeight is used to document childrens length or height.

 Observation.code.coding holds the valid values for the types of observations allowed. It is bound to a mandatory LOINC code: 8302-2 'Body height', and a mandatory set of SNOMED CT codes. The allowed SNOMED CT observation codes are:
 * Body height
 * Body height standing
 * Body height recumbent

Choose 'body height recumbent' as long as the child is lying down while being meassured, and shift to 'body heigh standing' when the child starts to stand up. Use 'Body height' if body position is unknown. 

The Observation.value[x] is a valueQuantity. The unit is drawn from UCUM and is always 'cm'. The height should be given as a decimal point with one precision. The Danish Health Authorieties recommend rounding to the nearest half centimeter. Remember to use '.' not ',' for decimal points.

The effective time of the observation is documented in Observation.effective[x].

Observation.category is populated to conform to national and international vital-sign/basic observation standards. The value should always be 'vital-signs'.

Observation.subject holds the reference to the child. Observation.encounter holds the reference to the encounter in which the observation is performed.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly. To indicate missing data, Observation.dataAbsentReason can be used. Observation.dataAbsentReason is mandatory if no value is given.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|højdeKode|Klasse som udtrykker, hvad der observeres.|Observation.code.coding|
|højdeResultat|Resultatet af observationen.|Observation.value[x]|
|højdeEnhed|Enheden på observationsresultatet.|Observation.valueQuantity.unit|
|højdeTid|Tidspunkt for observationen.|Observation.effective|
|højdeKategori|Klasse der udtrykker en overordnet kategori for hvad der observeres|Observation.category|
|højdeSubjekt|Den borger, for hvem der er foretaget en observation.|Observation.subject|
|højdeKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|højdeStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|
|højdeMangler|Klasse, der udtrykker hvorfor data mangler|Observation.dataAbsentReason|
