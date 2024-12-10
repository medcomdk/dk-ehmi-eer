Profile:      EerSorOrganization
Parent:       MCSDOrganization
Id:           Eer.Sor.Organization
Title:        "EER SOR Organization"
Description:  """ EER SOR General Organization """
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = identifier.system
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    SOR 1..1 MS SU 
    and MunicipalityCode 0..1 MS SU 
* identifier[SOR].use = #official
* identifier[SOR].type from $EerSorOrganizationIdentierTypeVS
* identifier[SOR].type = $EerSorOrganizationIdentierType#SORID (exactly)
* identifier[SOR].system = "1.2.208.176.1.1" (exactly)
* identifier[MunicipalityCode].use = #official
* identifier[MunicipalityCode].value from $EerSorMunicipalityCodeVS
* identifier[MunicipalityCode].type from $EerSorOrganizationIdentierTypeVS
* identifier[MunicipalityCode].system = $EerSorMunicipalityCode
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    SOR-Hierarchy 1..1 MS SU 
    and SOR-UnitType 0..1 SU
    and EerSorOrganizationType 0..1 MS SU 
    and EerSorIOOrganizationType 0..1 MS SU
* type[SOR-Hierarchy].coding.code from $EerSorOrganizationTypeVS
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* type[SOR-UnitType].coding.code from $EerSorUnitTypeVS
* type[SOR-UnitType].coding.system = $EerSorUnitType
* type[EerSorOrganizationType].coding.code from $EerSorOrganizationTypeVS
* type[EerSorOrganizationType].coding.system = $EerSorOrganizationType
* type[EerSorIOOrganizationType].coding.code from $EerSorIOOrganizationTypeVS
* type[EerSorIOOrganizationType].coding.system = $EerSorIOOrganizationType
* extension contains eer-dk-eua-system-extension named eua-system 0..* MS 
* endpoint 0..*
* endpoint only Reference(EerEndpointMessagingEdelivery)

/*
Profile:      EerSorIOOrganization
Parent:       EerSorOrganization
Id:           Eer.Sor.InstitutionOwner.Organization
Title:        "EER SOR Institution Owner Organization"
Description:  """ EER SOR Institution Owner Organization IO (DK:IE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    EerSorOrganizationType 1..1 MS SU 
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#IE (exactly)
* type[EerSorOrganizationType].coding.code from $EerSorOrganizationTypeVS
* type[EerSorOrganizationType].coding.system = $EerSorOrganizationType
* partOf 0..0
* endpoint 0..0

Profile:      EerSorMunicipalityOrganization
Parent:       EerSorOrganization
Id:           Eer.Sor.InstitutionOwner.Municipality.Organization
Title:        "EER SOR Institution Owner Municipality Organization"
Description:  """ EER SOR Institution Owner Municipality Organization IO (DK:IE) """
//* type[SOR-Hierarchy] = $EerSorOrganizationType#IE (exactly)
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    MunicipalityCode 1..1 MS SU 
* identifier[MunicipalityCode].use = #official
* identifier[MunicipalityCode].value from $EerSorMunicipalityCodeVS
* identifier[MunicipalityCode].type from $EerSorOrganizationIdentierTypeVS
* identifier[MunicipalityCode].system = $EerSorMunicipalityCode
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#IE (exactly)
* type[EerSorOrganizationType].coding.code = $EerSorOrganizationType#Municipality (exactly)
* type[SOR-UnitType].coding.code = $EerSorUnitType#kommune (exactly)

Profile:      EerSorRegionalOrganization
Parent:       EerSorOrganization
Id:           Eer.Sor.InstitutionOwner.Regional.Organization
Title:        "EER SOR Institution Owner Regional Organization"
Description:  """ EER SOR Institution Owner Regional Organization IO (DK:IE) """
///* type[SOR-Hierarchy] = $EerSorOrganizationType#IE (exactly)
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    RegionalCode 1..1 MS SU 
* identifier[RegionalCode].use = #official
* identifier[RegionalCode].value from $EerSorRegionalCodeVS
* identifier[RegionalCode].type from $EerSorOrganizationIdentierTypeVS
* identifier[RegionalCode].system = $EerSorRegionalCode
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#IE (exactly)
* type[EerSorOrganizationType].coding.code = $EerSorOrganizationType#Region (exactly)
* type[SOR-UnitType].coding.code = $EerSorUnitType#region (exactly)

Profile:      EerSorHIOrganization
Parent:       EerSorOrganization
Id:           Eer.Sor.HealthcareInstitution.Organization
Title:        "EER SOR Healthcare Institution Organization"
Description:  """ EER SOR Healthcare Institution Organization HI (DK:SI) """
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#SI (exactly)
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
Parent:       EerSorOrganization
Id:           Eer.Sor.HealthcareInstitution.Hospital.Organization
Title:        "EER SOR Healthcare Institution Hospital Organization"
Description:  """ EER SOR Healthcare Institution Hospital Organization HI (DK:SI) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    ClinicalAdministrativeHierarchy 1..1 MS SU 
* type[SOR-Hierarchy] = $EerSorOrganizationType#SI (exactly)
* type[ClinicalAdministrativeHierarchy].coding.code from eer-sor-clinical-administrative-hierarchy-valueset
* type[ClinicalAdministrativeHierarchy].coding.code = $EerSorClinicalAdministrativeHierarchy#Hospital (exactly)
* type[ClinicalAdministrativeHierarchy].coding.system = $EerSorClinicalAdministrativeHierarchy

Profile:      EerSorOUOrganization
Parent:       EerSorOrganization
Id:           Eer.Sor.OrganizationalUnit.Organization
Title:        "EER SOR Organizational Unit"
Description:  """ EER SOR Organizational Unit OU (DK:OE) """
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE (exactly)

Profile:      EerSorHospitalOUOrganization
Parent:       EerSorOrganization
Id:           Eer.Sor.HospitalOUOrganization.Organization
Title:        "EER SOR Organizational Unit"
Description:  """ EER SOR Organizational Unit OU (DK:OE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    ClinicalAdministrativeHierarchy 1..1 MS SU 
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE (exactly)
//* type[ClinicalAdministrativeHierarchy] = $EerSorClinicalAdministrativeHierarchy#Afdeling
*/