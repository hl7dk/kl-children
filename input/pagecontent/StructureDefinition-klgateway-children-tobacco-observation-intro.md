<!-- ### Scope and usage
KLGatewayChildrenTobaccoObservation is used to document small childrens exposue to tobacco, and teenagers tocacco use.

Observation.code.coding, holds the valid value for the types of observations allowed. It is bound to a fixed SNOMED CT code 'Tobacco use and exposure'.

Observation.value[x] is a coded value Observation.valueCodeableConcept, which should be drawn from the required ValueSet. The valid values are:

* 'Exposed to tobacco smoke at home' (is registered when a child is exposed to tobaco. Exposure to tobacco smoke is defined by the national childrens database indicator [as explained here](https://sundhedsdatastyrelsen.dk/da/rammer-og-retningslinjer/indberetning_sei/vejledninger_indberetning/bornedatabasen))
* 'Tobacco user' (is registered when a child reports tobacco use in the school take-off examination/udskolingsundersøgelse)
* 'No current problems or disability' (is registered when the child does not have problems with tobacco exposure or use)

The time of the observation is documented in Observation.effective[x]. 

Observation.subject holds the reference to the child, who is obsesrved. Observation.encounter holds the reference to the encounter in which the observation is performed.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly. To indicate missing data, Observation.dataAbsentReason can be used as well. E.g when citizens are asked, but decline to answer, the dataAbsentReason should be populated with 'asked-declined'. 

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|tobaksobservationKode|Klasse som udtrykker, hvad der observeres.|Observation.code.coding|
|tobaksobservationResultat|Resultatet af observationen.|Observation.value[x]|
|tobaksobservationTid|Tidspunkt for observationen.|Observation.effective|
|tobaksobservationSubjekt|Den borger, for hvem der er foretaget en observation.|Observation.subject|
|tobaksobservationKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|tobaksobservationStatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|
|tobaksobservationMangler|Klasse, der udtrykker hvorfor data mangler|Observation.dataAbsentReason| -->
