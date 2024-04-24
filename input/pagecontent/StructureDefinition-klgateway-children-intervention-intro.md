### Scope and usage
The KLGatewayChildrenIntervention for the FBU standard is used whenever a need-based intervention is planned for a child or parent in Danish municipalities.

CarePlan.activity.detail.code.coding holds the intervention code, which has to come from the official list of interventions.

It is important to distinguish correctly between the dates and times stated in the model. CarePlan.period.start is when the PlannedIntervention was authorized (bevillingstid). The planned end-date is CarePlan.period.end, unless the date has already occurred and the status is 'completed', then it is the actual end-date. It is not necessary to report a planned end-date, if it is unknown. All dates may be reported with or without time of day.

Notice that some interventions have a timeframe, in which several encounters are delivered. Others are planned and delivered without that eliciting extra encounters for the child or parents (or at least without specific documentation of it). The last mentioned may be reported with the same CarePlan.period.start and CarePlan.period.end, or with only a start-date, and there is no requirement to report associated encounters. This holds true for the interventions related to parent-education (forældreuddannelse), parent-group (forældregruppe) and collaboration/referrals (samarbejdsindsatser inkl. henvisninger).

CarePlan.status and CarePlan.intent are mandatory in the FHIR CarePlan resource. CarePlan.intent is always 'plan' in this implementation guide. CarePlan status should be either 'unknown', 'entered-in-error', or the status of the intervention at the time of reporting. Note that the meaning of 'active' is "ready to be acted upon", so it does not signify that the first activity has occurred.

CarePlan.activity.detail.status is also mandatory, and all the statuses in the FHIR ValueSet may be used, however 'unknown' is permitted from the time where the intervention occurs in the record until its completion. It is recommended not to use 'entered-in-error' - if the CarePlan is entered-in-error use CarePlan.status.

CarePlan.subject references the citizen, that receives the interventions. Note that some interventions should be linked to the child, and others to the parents.

CarePlan.activity.detail.reasonCode.coding may hold one or more condition-codes. Though not mandatory to use, conditions provide a structured way of linking what challenges a family have, with the intervention provided.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificere hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|indsatsskode|Udtrykker hvilken klasse indsatsen tilhører.|CarePlan.activity.detail.code.coding|
|indsatsbevillingstid|Tidspunktet for hvornår indsatsen er bevilget|CarePlan.period.start|
|indsatsafslutningstid|Tidspunktet for hvornår indsatsen er afsluttet, eller planlægges afsluttet|CarePlan.period.end|
|indsatsstatus|Indikerer om indsatsplanen er klar til at blive handlet på, om dokumentationen repræsentere en fremtidig intention eller er historisk.|CarePlan.status|
|indsatshensigt|Indikerer niveauet af autorisation og hvor langt i planlægningen indsatsen er|CarePlan.intent|
|indsatsAktivitetsstatus|Indikerer om indsatsen er igangsat, eller om den ikke er startet, er aflyst, eller er færdiggjort|CarePlan.activity.detail.status|
|indsatssubjekt|Den borger som den planlagte indsats retter sig mod|CarePlan.subject|
|indsatsBegrundelse|Kode for den eller de tilstande, der ligge til grund for denne behovsindsats| CarePlan.activity.detail.reasonCode.coding|
