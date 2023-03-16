### Scope and usage
KLGatewayChildrenIndicator is a simple form of observation where a whole area of concern in evaluated. The use of this resource should not be confused with KLGatewayChildrenObservation, which is used for meassurements and more detailed observations.


 Observation.code.coding, holds the valid values for the types of indicators. It is bound to a mandatory set of codes. The allowed codes are (not in ValueSet yet):
* Mors psykiske tilstand 
* samspil og kontakt
* Signaler og reaktioner
* Kommunikation og sprog
* Motorik
* Fysisk aktivitet
* Mad og måltider
* Syn
* Hørelse
* Fysisk trivsel
* Søvn/træthed
* Spisning, kost og motion
* Trivsel
* Seksuel adfærd
* Tobak
* Alkohol
* Andre rusmidler
* Mental sundhed

For each indicator, Observation.value[x] is a coded value Observation.valueCodeableConcept, which should be drawn from the required ValueSet. If there is nothing to remark, the code should always be 160245001 'No current problems or disability'. If there is a problem, the code that most precicely represents the problem should be used e.g. if there is found a problem with the hearing, the code 313203003 'Hearing test abnormal (finding)' should be used.

The effective time of the observation is documented in Observation.effectiveDateTime, all indicators should use the time, where the health nurse has an encounter with the family or child, not the time where a problem first occured.

Observation.subject holds the reference to the child, who is observed. Observation.encounter hold the reference to the encounter in which the observation is performed.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly. To indicate missing data, Observation.dataAbsentReason can be used as well. 

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
