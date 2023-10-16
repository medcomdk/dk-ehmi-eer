Profile:      SOROrganization
Parent:       MCSDOrganization
Id:           MedCom.SOR.Organization
Title:        "SOR Organization"
Description:  """ SOR General Organization """
* type from ehmi-sor-organization-type-valueset

Profile:      SORIOOrganization
Parent:       SOROrganization
Id:           MedCom.SOR.InstitutionOwner.Organization
Title:        "SOR Institution Owner Organization"
Description:  """ SOR Institution Owner Organization IO (DK:IE) """
* type = $EHMISOROrganizationType#IO (exactly)

Profile:      SORHIOrganization
Parent:       SOROrganization
Id:           MedCom.SOR.HealthcareInstitution.Organization
Title:        "SOR Healthcare Institution Organization"
Description:  """ SOR Healthcare Institution Organization HI (DK:SI) """
* type = $EHMISOROrganizationType#HI (exactly)

Profile:      SOROUOrganization
Parent:       SOROrganization
Id:           MedCom.SOR.OrganizationalUnit.Organization
Title:        "SOR Organizational Unit"
Description:  """ SOR Organizational Unit OU (DK:OE) """
* type = $EHMISOROrganizationType#OU (exactly)

