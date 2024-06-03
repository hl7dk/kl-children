### Scope and usage
KLGatewayChildrenIndicator is an abstract profile (i.e. cannot be instantiated). All mandatory observations/evaluations from the children’s standard, where a whole area of concern is evaluated using a two-, three- or four-point scale of no problems, potential concern and concerns respectively, inherits from this abstract profile. The profiles are:

* Social interaction (Same profile for small children and school children)
* Parent-child relationship (Only small children)
* Parents mental state (Only small children)
* Parents social status (Only small children)
* Social support network (Only small children)
* Passive smoking (Same profile for small children and school children)
* Use of Nicotine (Only school children) 
* Communication (Same profile for Small children and school children)
* Sleep (Only small children)
* Motor function (Same profile for Small children and school children)
* Nutrition (Only School children)
* Physical activity (Only school children)
* Hearing (Only school children)
* Sight (Only school children)

 Observation.code.coding, holds the valid values for the types of indicators. It is bound to a mandatory set of codes reflecting the areas mentioned above. The codes are owned by the municipalities and defined specifically for the children database.

For each indicator, Observation.value[x] is a coded value Observation.valueCodeableConcept. Each of the profiles that inherits from the abstract indicator defines the required ValueSets, which contain children database codes.

The effective time of the observation is documented in Observation.effectiveDateTime, all indicators should use the time, where the health nurse has an encounter with the family or child, not the time where a problem first occurred.

Observation.subject holds the reference to the child or parent, who is observed. Observation.encounter hold the reference to the encounter in which the observation is performed. For parent observations do not reference the child’s encounter, just leave it blank.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occurred, follow the FHIR guidance to populate the field correctly. 

To indicate missing data, Observation.dataAbsentReason is used. The value 'unknown' can always be used. It is also possible to use one of the other values in the ValueSet defined by the FHIR standard, if more details are nedded locally.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|indikatorKode|Klasse som udtrykker, hvad der observeres.|Observation.code.coding|
|indikatorResultat|Resultatet af observationen.|Observation.value[x]|
|indikatorTid|Tidspunkt eller periode for observationen.|Observation.effective|
|indikatorSubjekt|Den borger, for hvem der er foretaget en observation.|Observation.subject|
|indikatorKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|indikatorstatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|
|indikatorMangler|Klasse, der udtrykker hvorfor data mangler|Observation.dataAbsentReason|
