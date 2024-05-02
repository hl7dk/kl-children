### Scope and usage
KLGatewayChildrenBodyWeight is used to document children weight results.

Observation.code.coding, holds the valid values for the types of observations allowed. It is bound to a mandatory LOINC code: 29463-7 'Body weight', and a mandatory SNOMED CT code 'Body weight'.

The Observation.value[x] is a valueQuantity. The unit is drawn from UCUM and is 'g' or 'kg'. In small children, the weight should be given as an integer. In chool children, the weight should be given as a decimal point with one precision. Remember to use '.' not ',' for decimal points.

The effective time of the observation is documented in Observation.effective[x].

Observation.category is populated to conform to international vital-sign standards. The value should always be 'vital-signs'.

Observation.subject holds the reference to the child. Observation.encounter holds the reference to the encounter in which the observation is performed.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occurred, follow the FHIR guidance to populate the field correctly. To indicate missing data, Observation.dataAbsentReason can be used. Observation.dataAbsentReason is mandatory if no value is given. Use the appropriate value according to the FHIR standard, or choose value 'unknown' if in doubt.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|vægtKode|Klasse som udtrykker, hvad der observeres.|Observation.code.coding|
|vægtResultat|Resultatet af observationen.|Observation.value[x]|
|vægtEnhed|Enheden på observationsresultatet. |Observation.valueQuantity.unit|
|vægtTid|Tidspunkt for observationen.|Observation.effective|
|vægtSubjekt|Den borger, for hvem der er foretaget en observation.|Observation.subject|
|vægtKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|vægtStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|
|vægtMangler|Klasse, der udtrykker hvorfor data mangler|Observation.dataAbsentReason|
|vægtKategori|Klasse der udtrykker en overordnet katagori for hvad der observeres.|Observation.category|