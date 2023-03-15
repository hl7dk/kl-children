### Scope and usage
KLGatewayChildrenObservation is used to document results of activities where a property of a child or parent is observed or meassured.
The use of this resource should not be confused with KLGatewayChildrenIndicator, which is a more simple form of observation where a whole area of concern in evaluated.

 Observation.code.coding, holds the valid values for the types of obervations allowed. It is bound to a mandatory set of SNOMED CT codes. The allowed observation codes are:
 * Body weight
 * Body height/length (choose length as long as the child is laying down while being meassured)
 * Head circumference
 * Tobaco use and exposure (used for observations of passive smoking as well as childs own smoking)
 * Infant feeding method (used for observations of childs breast feeding and partial breastfeeding periodes)
 * Emotion (used for childs own evaluation of general wellbeing and wellbeing in school)

The first three observations require its Observation.value[x] to be a valueQuantity. Units should be drawn from UCUM and can be either 'g' or 'cm'. For the three last, Observation.value[x] is a coded value Observation.valueCodeableConcept, which should be drawn from the required ValueSet.

The effective time of the observation is documented in Observation.effective[x]. All observations, except 'Infant feeding method' should just use effectiveDateTime. Infant feeding method uses effectivePeriode to set the start and end date of a certain feeding method.

Observation.subject holds the reference to the child, who is observed. Observation.encounter hold the reference to the encounter in which the observation is performed.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly. To indicate missing data, Observation.dataAbsentReason can be used as well. 

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|observationskode|Klasse som udtrykker, hvad der observeres.|Observation.code.coding|
|observationsresultat|Resultatet af observationen.|Observation.value[x]|
|observationsenhed|Enheden på observationsresultatet, hvis denne er kvantitativ.|Observation.valueQuantity.unit|
|observationstid|Tidspunkt eller periode for observationen.|Observation.effective|
|observationssubjekt|Den borger, for hvem der er foretaget en observation.|Observation.subject|
|observationskontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|observationsstatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|
|observationMangler|Klasse, der udtrykker hvorfor data mangler|Observation.dataAbsentReason|