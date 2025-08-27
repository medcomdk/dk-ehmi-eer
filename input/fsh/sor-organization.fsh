Profile:      EerMessagingOrganization
Parent:       MCSDOrganization
Id:           Eer.Messaging.Organization
Title:        "EerMessagingOrganization"
Description:  """ EerMessagingOrganization """
//* meta.profile = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-organization"
* identifier 1..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    SOR-ID 1..1 MS SU 
//    and MunicipalityCode 0..1 MS SU 
* identifier[SOR-ID].use = #official
* identifier[SOR-ID].type from $EerMessagingOrganizationIdentierTypeVS
* identifier[SOR-ID].type.coding.code = $EerMessagingOrganizationIdentierType#SORID (exactly)
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
//* identifier[SOR-ID].system = $EerMessagingOrganizationIdentierSystem (exactly)
//* system = "urn:oid:1.2.208.176.1.1" (exactly)
//* identifier[SOR-ID].use = #official
//* identifier[SOR-ID].type from $EerMessagingOrganizationIdentierTypeVS
//* identifier[SOR-ID].type = $EerMessagingOrganizationIdentierType#SORID (exactly)
//* identifier[SOR-ID].system = $EerMessagingOrganizationIdentierSystem (exactly)
//* identifier[MunicipalityCode].use = #official
//* identifier[MunicipalityCode].value from $EerSorMunicipalityCodeVS
//* identifier[MunicipalityCode].type from $EerMessagingOrganizationIdentierTypeVS
//* identifier[MunicipalityCode].system = $EerSorMunicipalityCode
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    SOR-Hierarchy 1..1 MS SU 
    and SOR-UnitType 0..1 SU
    and EerMessagingOrganizationType 0..1 MS SU 
    and EerSorOrganizationType 0..1 MS SU
* type[SOR-Hierarchy].coding.code from $EerMessagingOrganizationTypeVS
* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
* type[SOR-UnitType].coding.code from $EerSorUnitTypeVS
* type[SOR-UnitType].coding.system = $EerSorUnitType
* type[EerMessagingOrganizationType].coding.code from $EerMessagingOrganizationTypeVS
* type[EerMessagingOrganizationType].coding.system = $EerMessagingOrganizationType
* type[EerSorOrganizationType].coding.code from $EerSorOrganizationTypeVS
* type[EerSorOrganizationType].coding.system = $EerSorOrganizationTypeCS
* extension contains eer-dk-eua-system-extension named eua-system 0..* MS 
* extension contains eer-dk-msh-system-extension named msh-system 0..* MS 
* endpoint 0..*
* endpoint only Reference(EerEndpointMessagingEdelivery)

Profile:      EerCoreOrganization
Parent:       EerMessagingOrganization
Id:           Eer.core.Organization
Title:        "EER Core Organization"
Description:  """ EER Core Organization"""
* partOf 0..0
* endpoint 0..0
//* eua-system 0..0
//* msh-system 0..0

/*
Profile: EerMessagingOrganization
Parent: EerMessagingOrganization
Id: ear-messaging-organization
Title: "EER Messaging Organization"
Description: "An extension of the MedComCoreOrganization profile with a required endpoint element."
//* identifier[EAN-ID] 0..0
//* identifier[KOMBIT-ORG-ID] 0..0
//* identifier[Ydernummer] 0..0
//* identifier[Kommunekode] 0..0
//* identifier[Regionskode] 0..0
//* identifier[ProducentID] 0..0
* endpoint 1..* MS
*/
/*
Profile:      EerSorIOOrganization
Parent:       EerMessagingOrganization
Id:           Eer.Sor.InstitutionOwner.Organization
Title:        "EER SOR Institution Owner Organization"
Description:  """ EER SOR Institution Owner Organization IO (DK:IE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    EerMessagingOrganizationType 1..1 MS SU 
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#IE (exactly)
* type[EerMessagingOrganizationType].coding.code from $EerMessagingOrganizationTypeVS
* type[EerMessagingOrganizationType].coding.system = $EerMessagingOrganizationType
* partOf 0..0
* endpoint 0..0

Profile:      EerSorMunicipalityOrganization
Parent:       EerMessagingOrganization
Id:           Eer.Sor.InstitutionOwner.Municipality.Organization
Title:        "EER SOR Institution Owner Municipality Organization"
Description:  """ EER SOR Institution Owner Municipality Organization IO (DK:IE) """
//* type[SOR-Hierarchy] = $EerMessagingOrganizationType#IE (exactly)
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    MunicipalityCode 1..1 MS SU 
//* identifier[MunicipalityCode].use = #official
//* identifier[MunicipalityCode].value from $EerSorMunicipalityCodeVS
//* identifier[MunicipalityCode].type from $EerMessagingOrganizationIdentierTypeVS
//* identifier[MunicipalityCode].system = $EerSorMunicipalityCode
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#IE (exactly)
* type[EerMessagingOrganizationType].coding.code = $EerMessagingOrganizationType#Municipality (exactly)
* type[SOR-UnitType].coding.code = $EerSorUnitType#kommune (exactly)

Profile:      EerSorRegionalOrganization
Parent:       EerMessagingOrganization
Id:           Eer.Sor.InstitutionOwner.Regional.Organization
Title:        "EER SOR Institution Owner Regional Organization"
Description:  """ EER SOR Institution Owner Regional Organization IO (DK:IE) """
///* type[SOR-Hierarchy] = $EerMessagingOrganizationType#IE (exactly)
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    RegionalCode 1..1 MS SU 
* identifier[RegionalCode].use = #official
* identifier[RegionalCode].value from $EerSorRegionalCodeVS
* identifier[RegionalCode].type from $EerMessagingOrganizationIdentierTypeVS
* identifier[RegionalCode].system = $EerSorRegionalCode
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#IE (exactly)
* type[EerMessagingOrganizationType].coding.code = $EerMessagingOrganizationType#Region (exactly)
* type[SOR-UnitType].coding.code = $EerSorUnitType#region (exactly)

Profile:      EerSorHIOrganization
Parent:       EerMessagingOrganization
Id:           Eer.Sor.HealthcareInstitution.Organization
Title:        "EER SOR Healthcare Institution Organization"
Description:  """ EER SOR Healthcare Institution Organization HI (DK:SI) """
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#SI (exactly)
//* partOf = Reference(Organization)
* partOf 1..1 MS

/*
Invariant:   dk-ehmi-org-1
Description: "EerSorHIOrganization.partOf SHALL be of type IO"
Severity:    #error
Expression:  "partOf only Reference({Organization/EerSorIOOrganization})"
//XPath:       "f:given or f:family"
*/
/*
Profile:      EerSorHospitalOrganization
Parent:       EerMessagingOrganization
Id:           Eer.Sor.HealthcareInstitution.Hospital.Organization
Title:        "EER SOR Healthcare Institution Hospital Organization"
Description:  """ EER SOR Healthcare Institution Hospital Organization HI (DK:SI) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    ClinicalAdministrativeHierarchy 1..1 MS SU 
* type[SOR-Hierarchy] = $EerMessagingOrganizationType#SI (exactly)
* type[ClinicalAdministrativeHierarchy].coding.code from eer-sor-clinical-administrative-hierarchy-valueset
* type[ClinicalAdministrativeHierarchy].coding.code = $EerSorClinicalAdministrativeHierarchy#Hospital (exactly)
* type[ClinicalAdministrativeHierarchy].coding.system = $EerSorClinicalAdministrativeHierarchy

Profile:      EerSorOUOrganization
Parent:       EerMessagingOrganization
Id:           Eer.Messaging.OrganizationalUnit.Organization
Title:        "EER SOR Organizational Unit"
Description:  """ EER SOR Organizational Unit OU (DK:OE) """
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OE (exactly)

Profile:      EerSorHospitalOUOrganization
Parent:       EerMessagingOrganization
Id:           Eer.Sor.HospitalOUOrganization.Organization
Title:        "EER SOR Organizational Unit"
Description:  """ EER SOR Organizational Unit OU (DK:OE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    ClinicalAdministrativeHierarchy 1..1 MS SU 
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OE (exactly)
//* type[ClinicalAdministrativeHierarchy] = $EerSorClinicalAdministrativeHierarchy#Afdeling
*/