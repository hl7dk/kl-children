# KLChildren
This implementation guide describes the delivery of children health data to KL Gateway. The data originates from the documantation made by health nurses (sundhedsplejersker) in the Danish municipalities.The reporting aims for compliance with the Danish core profiles and the current work on a shared information model (FKI) for data in the Danish municipalities.  

The profiles for the reporting are restricted to allow only the information that is required to report to the KL Gateway.

## Overview
The data is reported as a collection of instances. A report may contain instances that conforms to the profiles defined in this implementation guide. See figure below.

<img alt="OverviewModel" src="./ReportStructure.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Whereas the report may seem unconstrained, several constraints exists for specific encounter types. E.g. at a Two-month visit height and weight has to be reported. The specific constraints are explained under each profile, and those that concerns multiple profiles are explained in the DeliveryReport. See in the 'Artifact' tap. The profiles found through the 'Artifact' tap, contains all details, but for a short description, refer to the descriptions below.

## Citizen
Information about the citizens that are the subjects of the report. This resource is used to get a reference to the child. However, sometimes a report holds data about the child's parents. To ensure that this data goes into the parent's record, the data should be related to the parent represented as a citizen. Citizen and relatedPerson resources for the parents should only be included when and if, they are relevant for the child's report.

##### Attributes
* civil registration number (CPR-nr)
* identification of the municipality holding and reporting the data
* a reference to ParentRelation that holds additional information about the citizen's children.

##### Validation
* One and only one civil registration number exists, and is a syntactically valid CPR-nr
* One and only one managing organization exitis, and is a syntactically valid SOR code (only code length is currently validated in the profile, but the authorization validates the actual SOR code)
* One reference to ParentRelation may exist

## ParentRelation
Information about the relationship between a child and its parents. Citizen and relatedPerson resources for the parents should only be included when and if, they are relevant for the child's report.

##### Attributes
* a reference to the Citizen instance that holds the child's information
* a relationship type that states that this is a 'parent'-relationship.

##### Validation
* one and only one reference to the Citizen exists
* one and only one relationship type exists, and the value is fixed to 'PRN' for parent.

