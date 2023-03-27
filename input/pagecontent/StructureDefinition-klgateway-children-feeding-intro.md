### Scope and usage
KLGatewayChildrenFeeding is used to document how small children are fed. It is used for observations of childs breast feeding and partial breastfeeding periodes, as well as documenting when breastfeeding was stopped.

 Observation.code.coding, holds the valid value for the types of observations allowed. It is bound to a fixed SNOMED CT code 'Infant feeding method'.

Observation.value[x] is a coded value Observation.valueCodeableConcept, which should be drawn from the required SNOMED CT ValueSet. The valid values are:
* 'Exclusively breastfed'
* 'Breastfeeding with supplement' (which is the same as partially breastfed)
* 'Breastfeeding stopped'

The effective time of the observation is documented in Observation.effective[x], which in this feeding method model have the option of two different datatypes. EffectivePeriod is used to set the start and end date of 'Exclusively breastfed' and 'Breastfeeding with supplement'. EffectiveDateTime is used to set the date for when the breastfeeding stopped. 

Observation.subject holds the reference to the child, who is obsesrved. Observation.encounter holds the reference to the encounter in which the observation is performed.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly. To indicate missing data, Observation.dataAbsentReason can be used as well. 

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|madningsobservationsKode|Klasse som udtrykker, hvad der observeres.|Observation.code.coding|
|madningsobservationsResultat|Resultatet af observationen.|Observation.value[x]|
|madningsobservationTid|Tidspunkt eller periode for observationen.|Observation.effective|
|madningsobservationSubjekt|Den borger, for hvem der er foretaget en observation.|Observation.subject|
|madningsobservationKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|madningsobservationStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|
|madningsobservationMangler|Klasse, der udtrykker hvorfor data mangler|Observation.dataAbsentReason|
