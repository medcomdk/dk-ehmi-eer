Profile:      EerSorOrganization
Parent:       EerMessagingOrganization //MCSDOrganization
Id:           Eer.SOR.Organization
Title:        "EerSorOrganization"
Description:  """ EerSorOrganization """
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-organization|3.4.0"
* partOf only Reference(EerSorOrganization)
* contact.extension.valueReference 0..1
* contact 1..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "purpose.coding.code"
  * ^slicing.rules = #open
* contact contains
    SOR-Owner 0..1 MS 
* contact[SOR-Owner].purpose.coding.code 1..1 MS SU
* contact[SOR-Owner].purpose.coding.code = #ADMIN (exactly)
* contact[SOR-Owner].purpose.coding.system = $contactentity-type
* contact[SOR-Owner].extension contains contactdetail-organization-reference-extension named SOR-Institution-Owner 1..1 MS 
  * ^short = "Reference to an SOR-Organizational Unit that is the InstitutionOwner unit, ie. has the type = #IE"
* contact[SOR-Owner].address 0..0
* contact[SOR-Owner].name 0..0
* contact[SOR-Owner].telecom 0..0
* endpoint only Reference(EerSorEndpoint)
