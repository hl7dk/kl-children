Profile: KLGatewayChildrenIncrementalDelivery
Parent: Bundle
Id: klgateway-children-incremental-delivery
Title: "CareIncrementalDelivery"
Description: "Delivery for all delivery reports made since last update (unordered)."
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link ..0
* entry.resource 1..1
* entry.resource only
    KLGatewayChildrenDeliveryReport
* entry.resource ^short = "Content constrained to known delivery reports"
* entry.search ..0
* entry.request ..0
* entry.response ..0
* signature ..0

Instance: TestIncrementalDelivery
InstanceOf: KLGatewayChildrenIncrementalDelivery
Description: "Example of an incremental delivery with one delivery report"
* type = #collection
* timestamp = 2020-07-08T23:45:00.000Z
* entry[+].fullUrl = "https://test.fhir.dk/Bundle/RikkeDeliveryReport2months"
* entry[=].resource = RikkeDeliveryReport2months