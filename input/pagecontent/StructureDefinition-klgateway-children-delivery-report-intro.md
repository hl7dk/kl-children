## Scope and usage
This model is used to represent the reporting of children's data from the health nurse prevention program in Denmark.

The report is a FHIR Bundle that allows different resources to be grouped and handled as a collection. Bundle.entry references and includes each of the Resource instances. The valid resources in this bundle are the ones defined in this implementation guide. No others are allowed.

Bundle.timestamp holds the time where the bundle is collected or sent.

Bundle.meta.profile specifies the profile of this delivery report. It should always be 'http://fhir.kl.dk/children/StructureDefinition/klgateway-children-delivery-report'.

For some encounter types, specific observations are required. This report has implemented rules known as FHIR invariants that check, that these conditions holds true. The implemented invariants are:

* gateway-children-report-parent-mental-state
* gateway-children-report-parent-social-status
* gateway-children-report-support-network
* gateway-children-report-social-interaction
* gateway-children-report-parent-relationship
* gateway-children-report-weight
* gateway-children-report-height
* gateway-children-report-head-circumference
* gateway-children-report-passive-smoking
* gateway-children-report-nicotine
* gateway-children-report-nutrition
* gateway-children-report-communication
* gateway-children-report-sleep
* gateway-children-report-motor-function
* gateway-children-report-physical-activity
* gateway-children-report-hearing
* gateway-children-report-sight

Look up narratives and FHIR-paths for these invariants in the bottom of this page.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificere hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|indberetningsrapportIndhold|Hver af indberetningsrapportens indholds-ressourcer|Bundle.entry|
|indberetningsrapportTid|Tid hvor rapporten samles eller afsendes|Bundle.timestamp|
|indberetningsrapportProfil|Den profil som dette bundle overholder|Bundle.meta.profile|
