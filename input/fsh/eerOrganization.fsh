Profile:      EerSOROrganization
Parent:       MCSDOrganization
Id:           EER.SOR.Organization
Title:        "EER SOR Organization"
Description:  """ EER SOR General Organization """
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    SOR 1..1 MS SU 
* identifier[SOR].use = #official
* identifier[SOR].type from $EerSOROrganizationIdentierTypeVS
* identifier[SOR].type = $EerSOROrganizationIdentierType#SOR (exactly)
* identifier[SOR].system = "1.2.208.176.1.1" (exactly)
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    SOR-Hierarchy 1..1 MS SU 
    and SOR-UnitType 0..1 SU
* type[SOR-Hierarchy].coding.code from $EerSOROrganizationTypeVS
* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* type[SOR-UnitType].coding.code from $EerSORUnitTypeVS
* type[SOR-UnitType].coding.system = $EerSORUnitType
//* endpoint 0..0

Profile:      EerSORIOOrganization
Parent:       EerSOROrganization
Id:           EER.SOR.InstitutionOwner.Organization
Title:        "EER SOR Institution Owner Organization"
Description:  """ EER SOR Institution Owner Organization IO (DK:IE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    EerSORIOOrganizationType 1..1 MS SU 
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#IE (exactly)
* type[EerSORIOOrganizationType].coding.code from $EerSORIOOrganizationTypeVS
* type[EerSORIOOrganizationType].coding.system = $EerSORIOOrganizationType
* partOf 0..0
* endpoint 0..0

Profile:      EerSORMunicipalityOrganization
Parent:       EerSORIOOrganization
Id:           EER.SOR.InstitutionOwner.Municipality.Organization
Title:        "EER SOR Institution Owner Municipality Organization"
Description:  """ EER SOR Institution Owner Municipality Organization IO (DK:IE) """
//* type[SOR-Hierarchy] = $EerSOROrganizationType#IE (exactly)
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    MunicipalityCode 1..1 MS SU 
* identifier[MunicipalityCode].use = #official
* identifier[MunicipalityCode].value from $EerSORMunicipalityCodeVS
* identifier[MunicipalityCode].type from $EerSOROrganizationIdentierTypeVS
* identifier[MunicipalityCode].system = $EerSORMunicipalityCode
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#IE (exactly)
* type[EerSORIOOrganizationType].coding.code = $EerSORIOOrganizationType#Municipality (exactly)
* type[SOR-UnitType].coding.code = $EerSORUnitType#kommune (exactly)

Profile:      EHMISORRegionalOrganization
Parent:       EerSORIOOrganization
Id:           EER.SOR.InstitutionOwner.Regional.Organization
Title:        "EER SOR Institution Owner Regional Organization"
Description:  """ EER SOR Institution Owner Regional Organization IO (DK:IE) """
///* type[SOR-Hierarchy] = $EerSOROrganizationType#IE (exactly)
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    RegionalCode 1..1 MS SU 
* identifier[RegionalCode].use = #official
* identifier[RegionalCode].value from $EerSORRegionalCodeVS
* identifier[RegionalCode].type from $EerSOROrganizationIdentierTypeVS
* identifier[RegionalCode].system = $EerSORRegionalCode
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#IE (exactly)
* type[EerSORIOOrganizationType].coding.code = $EerSORIOOrganizationType#Region (exactly)
* type[SOR-UnitType].coding.code = $EerSORUnitType#region (exactly)

Profile:      EerSORHIOrganization
Parent:       EerSOROrganization
Id:           EER.SOR.HealthcareInstitution.Organization
Title:        "EER SOR Healthcare Institution Organization"
Description:  """ EER SOR Healthcare Institution Organization HI (DK:SI) """
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#SI (exactly)
//* partOf = Reference(Organization)
* partOf 1..1 MS

/*
Invariant:   dk-ehmi-org-1
Description: "EerSORHIOrganization.partOf SHALL be of type IO"
Severity:    #error
Expression:  "partOf only Reference({Organization/EerSORIOOrganization})"
//XPath:       "f:given or f:family"
*/

Profile:      EerSORHospitalOrganization
Parent:       EerSORHIOrganization
Id:           EER.SOR.HealthcareInstitution.Hospital.Organization
Title:        "EER SOR Healthcare Institution Hospital Organization"
Description:  """ EER SOR Healthcare Institution Hospital Organization HI (DK:SI) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    ClinicalAdministrativeHierarchy 1..1 MS SU 
* type[SOR-Hierarchy] = $EerSOROrganizationType#SI (exactly)
* type[ClinicalAdministrativeHierarchy].coding.code from ehmi-sor-clinical-administrative-hierarchy-valueset
* type[ClinicalAdministrativeHierarchy].coding.code = $EerSORClinicalAdministrativeHierarchy#Hospital (exactly)
* type[ClinicalAdministrativeHierarchy].coding.system = $EerSORClinicalAdministrativeHierarchy

Profile:      EerSOROUOrganization
Parent:       EerSOROrganization
Id:           EER.SOR.OrganizationalUnit.Organization
Title:        "EER SOR Organizational Unit"
Description:  """ EER SOR Organizational Unit OU (DK:OE) """
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#OE (exactly)

Profile:      EerSORHospitalOUOrganization
Parent:       EerSOROUOrganization
Id:           EER.SOR.HospitalOUOrganization.Organization
Title:        "EER SOR Organizational Unit"
Description:  """ EER SOR Organizational Unit OU (DK:OE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    ClinicalAdministrativeHierarchy 1..1 MS SU 
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#OE (exactly)
//* type[ClinicalAdministrativeHierarchy] = $EerSORClinicalAdministrativeHierarchy#Afdeling
