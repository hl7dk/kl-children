### Scope and usage
KLGatewayChildrenExamResult is a profile for holding structured qualitative history and examination findings. Note that each finding should have its own instance of KLGatewayChildrenExamResult, and that nothing should be reported if things are normal.

 Observation.code.coding, always hold a fixed SNOMED CT code, that states that this is a history and/or examination observation. 

Observation.value[x] is a coded value Observation.valueCodeableConcept. Values should be derived from the required ValueSet. It is optional to also associate the appropriate SNOMED CT code. 

The effective time of the observation is documented in Observation.effectiveDateTime, all results should use the time, where the health nurse has an encounter with the family or child, not try to guess the time where a problem first occured.

Observation.subject holds the reference to the child or parent, who is observed. Observation.encounter hold the reference to the encounter in which the observation is performed. For parent observations do not reference the childs encounter, just leave it blank.

Notice that the status-attribute is mandatory. For normal use, just set to "final". If data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly.


### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|undersøgelsesKode|Klasse som udtrykker, hvad der observeres.|Observation.code.coding|
|undersøgelsesResultat|Resultatet af observationen.|Observation.value[x]|
|undersøgelsesTid|Tidspunkt eller periode for observationen.|Observation.effective|
|undersøgelsesSubjekt|Den borger, for hvem der er foretaget en observation.|Observation.subject|
|undersøgelsesKontakt|Den kontakt, hvor observationen er foretaget.|Observation.encounter|
|undersøgelsesstatus|Klasse der udtrykker, hvor i sin proces, observationen er.|Observation.status|
