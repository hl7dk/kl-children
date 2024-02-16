### Scope and usage
KLGatewayChildrenFeeding is used to document how small children are fed. It is used for observations of childs breast feeding and partial breastfeeding periodes, as well as documenting when breastfeeding was stopped.

 Observation.code.coding, holds the valid value for the types of observations allowed. It is bound to a fixed municipality code 'ernæring' and SNOMED CT code 'Infant feeding method'.

Observation.value[x] is a coded value Observation.valueCodeableConcept, which should be drawn from the required ValueSet. The valid values are:
* 'Fuldamning, inklusiv modermælk på flaske'
* 'Ammes primært'
* 'Ammes som supplement til anden kost'
* 'Modermælkserstatning og/eller overgangskost'
* 'Udelukkende familiens mad'

The effective time of the observation is documented in Observation.effective[x], which in this feeding method model have the option of two different datatypes. EffectivePeriod is used to set the start and end date of periods where a certain feeding method is used. EffectiveDateTime is used to set the date for an actual status of feeding method. I.e. when a health nurse visits the family, she has to collect information about in which period each feeding method is used, and get a status about what feeding method is used today. If a period is started, but not ended yet, EffectivePeriod.end is not populated. Note that this means that more than one instance of FeedingObservation might be reported for the same visit.

Observation.subject holds the reference to the child, who is obseserved. Observation.encounter holds the reference to the encounter in which the observation is performed.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly. To indicate missing data, Observation.dataAbsentReason is used. 

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
