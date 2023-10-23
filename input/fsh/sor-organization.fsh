Profile:      SOROrganization
Parent:       MCSDOrganization
Id:           MedCom.SOR.Organization
Title:        "EHMI SOR Organization"
Description:  """ SOR General Organization """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    SOR-Hierarchy 1..1 MS SU 
* type from ehmi-sor-organization-type-valueset

Profile:      SORIOOrganization
Parent:       SOROrganization
Id:           MedCom.SOR.InstitutionOwner.Organization
Title:        "EHMI SOR Institution Owner Organization"
Description:  """ SOR Institution Owner Organization IO (DK:IE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    EHMISORIOOrganizationType 1..1 MS SU 
* type[SOR-Hierarchy] = $EHMISOROrganizationType#IO (exactly)
* type[EHMISORIOOrganizationType] from ehmi-sor-io-organization-type-valueset

Profile:      SORIOMunicipalityOrganization
Parent:       SORIOOrganization
Id:           MedCom.SOR.InstitutionOwner.Municipality.Organization
Title:        "EHMI SOR Institution Owner Municipality Organization"
Description:  """ SOR Institution Owner Municipality Organization IO (DK:IE) """
//* type[SOR-Hierarchy] = $EHMISOROrganizationType#IO (exactly)
* type[EHMISORIOOrganizationType] = $EHMISORIOOrganizationType#Municipality (exactly)

Profile:      SORHIOrganization
Parent:       SOROrganization
Id:           MedCom.SOR.HealthcareInstitution.Organization
Title:        "EHMI SOR Healthcare Institution Organization"
Description:  """ SOR Healthcare Institution Organization HI (DK:SI) """
* type[SOR-Hierarchy] = $EHMISOROrganizationType#HI (exactly)

Profile:      SOROUOrganization
Parent:       SOROrganization
Id:           MedCom.SOR.OrganizationalUnit.Organization
Title:        "EHMI SOR Organizational Unit"
Description:  """ SOR Organizational Unit OU (DK:OE) """
* type[SOR-Hierarchy] = $EHMISOROrganizationType#OU (exactly)

