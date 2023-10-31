Profile:      EHMISOROrganization
Parent:       MCSDOrganization
Id:           EHMI.SOR.Organization
Title:        "EHMI SOR Organization"
Description:  """ EHMI SOR General Organization """
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    SOR 1..1 MS SU 
* identifier[SOR].use = #official
* identifier[SOR].type from ehmi-sor-organization-identier-type-valueset
* identifier[SOR].type = $EHMISORorganizationIdentierType#SOR (exactly)
* identifier[SOR].system = "1.2.208.176.1.1" (exactly)
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    SOR-Hierarchy 1..1 MS SU 
    and SOR-UnitType 0..1 SU
* type[SOR-Hierarchy].coding.code from ehmi-sor-organization-type-valueset
* type[SOR-UnitType].coding.code from ehmi-sor-unit-type-valueset
//* type[SOR-UnitType].coding.system = ehmi-sor-unit-type-valueset

Profile:      EHMISORIOOrganization
Parent:       EHMISOROrganization
Id:           EHMI.SOR.InstitutionOwner.Organization
Title:        "EHMI SOR Institution Owner Organization"
Description:  """ EHMI SOR Institution Owner Organization IO (DK:IE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    EHMISORIOOrganizationType 1..1 MS SU 
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#IO (exactly)
* type[EHMISORIOOrganizationType].coding.code from ehmi-sor-io-organization-type-valueset

Profile:      EHMISORMunicipalityOrganization
Parent:       EHMISORIOOrganization
Id:           EHMI.SOR.InstitutionOwner.Municipality.Organization
Title:        "EHMI SOR Institution Owner Municipality Organization"
Description:  """ EHMI SOR Institution Owner Municipality Organization IO (DK:IE) """
//* type[SOR-Hierarchy] = $EHMISOROrganizationType#IO (exactly)
* type[EHMISORIOOrganizationType].coding.code = $EHMISORIOOrganizationType#Municipality (exactly)
* type[SOR-UnitType].coding.code = $EHMISORUnitType#kommune (exactly)

Profile:      EHMISORRegionalOrganization
Parent:       EHMISORIOOrganization
Id:           EHMI.SOR.InstitutionOwner.Regional.Organization
Title:        "EHMI SOR Institution Owner Regional Organization"
Description:  """ EHMI SOR Institution Owner Regional Organization IO (DK:IE) """
///* type[SOR-Hierarchy] = $EHMISOROrganizationType#IO (exactly)
* type[EHMISORIOOrganizationType].coding.code = $EHMISORIOOrganizationType#Region (exactly)
* type[SOR-UnitType].coding.code = $EHMISORUnitType#region (exactly)

Profile:      EHMISORHIOrganization
Parent:       EHMISOROrganization
Id:           EHMI.SOR.HealthcareInstitution.Organization
Title:        "EHMI SOR Healthcare Institution Organization"
Description:  """ EHMI SOR Healthcare Institution Organization HI (DK:SI) """
* type[SOR-Hierarchy] = $EHMISOROrganizationType#HI (exactly)

Profile:      EHMISORHospitalOrganization
Parent:       EHMISORHIOrganization
Id:           EHMI.SOR.HealthcareInstitution.Hospital.Organization
Title:        "EHMI SOR Healthcare Institution Hospital Organization"
Description:  """ EHMI SOR Healthcare Institution Hospital Organization HI (DK:SI) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    ClinicalAdministrativeHierarchy 1..1 MS SU 
* type[SOR-Hierarchy] = $EHMISOROrganizationType#HI (exactly)
* type[ClinicalAdministrativeHierarchy] from ehmi-sor-clinical-administrative-hierarchy-valueset
* type[ClinicalAdministrativeHierarchy] = $EHMISORClinicalAdministrativeHierarchy#Hospital (exactly)

Profile:      EHMISOROUOrganization
Parent:       EHMISOROrganization
Id:           EHMI.SOR.OrganizationalUnit.Organization
Title:        "EHMI SOR Organizational Unit"
Description:  """ EHMI SOR Organizational Unit OU (DK:OE) """
* type[SOR-Hierarchy] = $EHMISOROrganizationType#OU (exactly)

Profile:      EHMISORHospitalOUOrganization
Parent:       EHMISOROUOrganization
Id:           EHMI.SOR.HospitalOUOrganization.Organization
Title:        "EHMI SOR Organizational Unit"
Description:  """ EHMI SOR Organizational Unit OU (DK:OE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    ClinicalAdministrativeHierarchy 1..1 MS SU 
* type[SOR-Hierarchy] = $EHMISOROrganizationType#OU (exactly)
//* type[ClinicalAdministrativeHierarchy] = $EHMISORClinicalAdministrativeHierarchy#Afdeling
