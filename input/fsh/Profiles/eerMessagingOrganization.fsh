Profile:      EerMessagingOrganization
Parent:       MCSDOrganization
Id:           Eer.Messaging.Organization
Title:        "EerMessagingOrganization"
Description:  """ EerMessagingOrganization """
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-organization|3.4.0"
* identifier 1..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    SOR-ID 1..1 MS SU 
* identifier[SOR-ID] only SORIdentifier
  * ^short = "[DA] SOR-id"

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

* extension contains eer-dk-eua-system-extension named eua-system 0..* MS 
* extension contains eer-dk-msh-system-extension named msh-system 0..* MS 
* endpoint 0..*
* endpoint only Reference(EerEndpointMessaging)
