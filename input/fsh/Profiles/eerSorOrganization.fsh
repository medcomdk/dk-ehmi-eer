Profile:      EerSOROrganization
Parent:       EerMessagingOrganization //MCSDOrganization
Id:           Eer.SOR.Organization
Title:        "EerSOROrganization"
Description:  """ EerSOROrganization """
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-organization|3.4.0"
/* identifier 1..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    SOR-ID 1..1 MS SU 
    and CVR-ID 0..1 MS SU 
* identifier[SOR-ID] only SORIdentifier
  * ^short = "[DA] SOR-id"
* identifier[CVR-ID] only CVRIdentifier
  * ^short = "VAT identification number, [DA] CVR-nummer"

* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.system
  * ^slicing.rules = #open
* type contains
    SOR-Hierarchy 1..1 MS SU 
    and SOR-UnitType 0..1 SU

* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
* type[SOR-Hierarchy].coding.code from $EerSorOrganizationTypeVS

* type[SOR-UnitType].coding.code from $EerSorUnitTypeVS
* type[SOR-UnitType].coding.system = $EerSorUnitType
*/
* contact.extension.valueReference
* contact 1..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "purpose"
  * ^slicing.rules = #open
* contact contains
    SOR-Owner 0..1 MS 
* contact[SOR-Owner].purpose.coding.code 1..1
* contact[SOR-Owner].purpose.coding.code = #ADMIN 
* contact[SOR-Owner].extension contains contactdetail-organization-reference-extension named sor-institution-owner 1..1 MS
  * ^short = "Reference to an SOR-Organizational Unit that is the InstitutionOwner unit, ie. has the type = #IE"
* contact[SOR-Owner].address 0..0
* contact[SOR-Owner].name 0..0
* contact[SOR-Owner].telecom 0..0

//* extension contains eer-dk-eua-system-extension named eua-system 0..* MS 
//* extension contains eer-dk-msh-system-extension named msh-system 0..* MS 
//* endpoint 0..*
* endpoint only Reference(EerSorEndpoint)
