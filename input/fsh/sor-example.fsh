// jurisdiction pair

Instance: SORJurisdictionOrganization-Example
InstanceOf: SORJurisdictionOrganization
Title: "Example SOR Jurisdiction Organization"
Description: "Organization resource for an example SOR Jurisdiction"
Usage: #example
* name = "SORJurisdictionOrganization-Example"
* active = true
* type[jurisdiction] = MCSDOrganizationLocationTypes#jurisdiction

Instance: SORJurisdictionLocation-Example
InstanceOf: SORJurisdictionLocation
Title: "Example SOR Jurisdiction Location"
Description: "Location resource for an example SOR Jurisdiction"
Usage: #example
* name = "SORJurisdictionLocation-Example"
* status = #active
* managingOrganization = Reference(SORJurisdictionOrganization-Example)
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#jdn
* type[jurisdiction] = MCSDOrganizationLocationTypes#jurisdiction

// another department

Instance: SOROrganization-ExamplePartner
InstanceOf: SOROrganization
Title: "Example Partner Organization"
Description: "Example Organization for a Partner Organization"
Usage: #example
* name = "Organization-ExamplePartner"
* active = true
* type[+] = http://terminology.hl7.org/CodeSystem/organization-type#govt

// Hierarchy Code System Example
CodeSystem:  SORExampleHierarchy
Id: SORexample-hierarchy
Title: "SOR Example Hierarchy Code System"
Description:  "An example vocabulary of hierarchies."
* ^caseSensitive = false
* ^content = #complete
* ^experimental = true
// * ^url = http://example.org/IHE/CodeSystem/SORexample-hierarchy
* #supply "Supply Chain"
* #admin "Administrative"

// facility pair which is part of a jurisdiction and has one other external org attached

Instance: SORFacilityOrganization-Example
InstanceOf: SORFacilityOrganization
Title: "Example SOR Facility Organization"
Description: "Organization resource for an example SOR Facility"
Usage: #example
* name = "SORFacilityOrganization-Example"
* active = true
* type[facility] = MCSDOrganizationLocationTypes#facility
* partOf = Reference(SORJurisdictionOrganization-Example)

Instance: SORFacilityOrganizationAffiliation-Example
InstanceOf: SOROrganizationAffiliation
Title: "Example SOR Facility Admin Organization Affiliation"
Description: "Organization Affiliation resource for an example administrative relationship for a facility."
Usage: #example
* active = true
* organization = Reference(SOROrganization-ExamplePartner)
* participatingOrganization = Reference(SORFacilityOrganization-Example)
* code = SORExampleHierarchy#admin

Instance: SORFacilityLocation-Example
InstanceOf: SORFacilityLocation
Title: "Example SOR Facility Location"
Description: "Location resource for an example SOR Facility"
Usage: #example
* name = "SORFacilityLocation-Example"
* status = #active
* managingOrganization = Reference(SORFacilityOrganization-Example)
* partOf = Reference(SORJurisdictionLocation-Example)
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu
* type[facility] = MCSDOrganizationLocationTypes#facility
* type[service] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP

Instance: SORLocation-Example
InstanceOf: SORLocation
Title: "Example SOR Location"
Description: "Location resource for an example of an SOR Location (Ward)"
Usage: #example
* name = "SORLocation-Example"
* status = #active
* partOf = Reference(SORFacilityLocation-Example)
* type[+] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#RNEU
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#wa

Instance: SORLocationDistance-Example
InstanceOf: SORLocationDistance
Title: "Example SOR Location with Distance Option"
Description: "Location resource for an example of an SOR Location with Distance Option"
Usage: #example
* name = "SORLocationDistance-Example"
* status = #active
* type[+] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu
* position.latitude = -1.46929510804737
* position.longitude = -78.81700744576973

// service, role, practitioner

Instance: SORHealthcareService-Example
InstanceOf: SORHealthcareService
Title: "Example SOR HealthcareService"
Description: "HealthcareService resource example for SOR."
Usage: #example
* name = "ANC"
* type = http://terminology.hl7.org/CodeSystem/service-type#124 "General Practice"
* location = Reference(SORFacilityLocation-Example)

Instance: SORPractitionerRole-Example
InstanceOf: SORPractitionerRole
Title: "Example SOR PractitionerRole"
Description: "PractitionerRole resource example for SOR."
Usage: #example
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#nurse
* location = Reference(SORFacilityLocation-Example)
* healthcareService = Reference(SORHealthcareService-Example)
* organization = Reference(SORFacilityOrganization-Example)
* practitioner = Reference(SORPractitioner-Example)

Instance: SORPractitioner-Example
InstanceOf: SORPractitioner
Title: "Example SOR Practitioner"
Description: "Practitioner resource example for SOR."
Usage: #example
* name.text = "John Galt" 

// bundler

Instance: Example-SOR
InstanceOf: Bundle
Title: "Example Bundle of SOR Resources"
Description: "Example Bundle of Core SOR Resources."
Usage: #example
* type = #transaction


* entry[+].fullUrl = "http://www.example.org/fhir/Organization/SORJurisdictionOrganization-Example"
* entry[=].request.url = "Organization/SORJurisdictionOrganization-Example"
* entry[=].request.method = #PUT
* entry[=].resource = SORJurisdictionOrganization-Example

* entry[+].fullUrl = "http://www.example.org/fhir/Location/SORJurisdictionLocation-Example"
* entry[=].request.url = "Location/SORJurisdictionLocation-Example"
* entry[=].request.method = #PUT
* entry[=].resource = SORJurisdictionLocation-Example

* entry[+].fullUrl = "http://www.example.org/fhir/Organization/SOROrganization-ExamplePartner"
* entry[=].request.url = "Organization/SOROrganization-ExamplePartner"
* entry[=].request.method = #PUT
* entry[=].resource = SOROrganization-ExamplePartner

* entry[+].fullUrl = "http://www.example.org/fhir/Organization/SORFacilityOrganization-Example"
* entry[=].request.url = "Organization/SORFacilityOrganization-Example"
* entry[=].request.method = #PUT
* entry[=].resource = SORFacilityOrganization-Example

* entry[+].fullUrl = "http://www.example.org/fhir/Location/SORFacilityLocation-Example"
* entry[=].request.url = "Location/SORFacilityLocation-Example"
* entry[=].request.method = #PUT
* entry[=].resource = SORFacilityLocation-Example

* entry[+].fullUrl = "http://www.example.org/fhir/HealthcareService/SORHealthcareService-Example"
* entry[=].request.url = "HealthcareService/SORHealthcareService-Example"
* entry[=].request.method = #PUT
* entry[=].resource = SORHealthcareService-Example

* entry[+].fullUrl = "http://www.example.org/fhir/PractitionerRole/SORPractitionerRole-Example"
* entry[=].request.url = "PractitionerRole/SORPractitionerRole-Example"
* entry[=].request.method = #PUT
* entry[=].resource = SORPractitionerRole-Example

* entry[+].fullUrl = "http://www.example.org/fhir/Practitioner/SORPractitioner-Example"
* entry[=].request.url = "Practitioner/SORPractitioner-Example"
* entry[=].request.method = #PUT
* entry[=].resource = SORPractitioner-Example

* entry[+].fullUrl = "http://www.example.org/fhir/OrganizationAffiliation/ex-OrgAff"
* entry[=].request.url = "OrganizationAffiliation/ex-OrgAff"
* entry[=].request.method = #PUT
* entry[=].resource = ex-OrgAff

* entry[+].fullUrl = "http://www.example.org/fhir/Organization/ex-OrgA"
* entry[=].request.url = "Organization/ex-OrgA"
* entry[=].request.method = #PUT
* entry[=].resource = ex-OrgA

* entry[+].fullUrl = "http://www.example.org/fhir/Organization/ex-OrgB"
* entry[=].request.url = "Organization/ex-OrgB"
* entry[=].request.method = #PUT
* entry[=].resource = ex-OrgB

* entry[+].fullUrl = "http://www.example.org/fhir/Organization/ex-OrgC"
* entry[=].request.url = "Organization/ex-OrgC"
* entry[=].request.method = #PUT
* entry[=].resource = ex-OrgC

* entry[+].fullUrl = "http://www.example.org/fhir/OrganizationAffiliation/ex-OrgAffC"
* entry[=].request.url = "OrganizationAffiliation/ex-OrgAffC"
* entry[=].request.method = #PUT
* entry[=].resource = ex-OrgAffC

* entry[+].fullUrl = "http://www.example.org/fhir/Endpoint/ex-endpointXCAquery"
* entry[=].request.url = "Endpoint/ex-endpointXCAquery"
* entry[=].request.method = #PUT
* entry[=].resource = ex-endpointXCAquery

* entry[+].fullUrl = "http://www.example.org/fhir/Endpoint/ex-endpointXCAretrieve"
* entry[=].request.url = "Endpoint/ex-endpointXCAretrieve"
* entry[=].request.method = #PUT
* entry[=].resource = ex-endpointXCAretrieve

* entry[+].fullUrl = "http://www.example.org/fhir/Endpoint/ex-endpointDicom"
* entry[=].request.url = "Endpoint/ex-endpointDicom"
* entry[=].request.method = #PUT
* entry[=].resource = ex-endpointDicom
