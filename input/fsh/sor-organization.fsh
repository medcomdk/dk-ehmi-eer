Profile:      EHMISOROrganization
Parent:       MCSDOrganization
Id:           EHMI.SOR.Organization
Title:        "EHMI SOR Organization"
Description:  """ EHMI SOR General Organization """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    SOR-Hierarchy 1..1 MS SU 
    and SOR-UnityType 0..1 MS SU
* type[SOR-Hierarchy] from ehmi-sor-organization-type-valueset
* type[SOR-UnityType] from ehmi-sor-unit-type-valueset

Profile:      EHMISORIOOrganization
Parent:       EHMISOROrganization
Id:           EHMI.SOR.InstitutionOwner.Organization
Title:        "EHMI SOR Institution Owner Organization"
Description:  """ EHMI SOR Institution Owner Organization IO (DK:IE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    EHMISORIOOrganizationType 1..1 MS SU 
* type[SOR-Hierarchy] = $EHMISOROrganizationType#IO (exactly)
* type[EHMISORIOOrganizationType] from ehmi-sor-io-organization-type-valueset

Profile:      EHMISORIOMunicipalityOrganization
Parent:       EHMISORIOOrganization
Id:           EHMI.SOR.InstitutionOwner.Municipality.Organization
Title:        "EHMI SOR Institution Owner Municipality Organization"
Description:  """ EHMI SOR Institution Owner Municipality Organization IO (DK:IE) """
* type[SOR-Hierarchy] = $EHMISOROrganizationType#IO (exactly)
* type[EHMISORIOOrganizationType] = $EHMISORIOOrganizationType#Municipality (exactly)

Profile:      EHMISORHIOrganization
Parent:       EHMISOROrganization
Id:           EHMI.SOR.HealthcareInstitution.Organization
Title:        "EHMI SOR Healthcare Institution Organization"
Description:  """ EHMI SOR Healthcare Institution Organization HI (DK:SI) """
* type[SOR-Hierarchy] = $EHMISOROrganizationType#HI (exactly)

Profile:      EHMISOROUOrganization
Parent:       EHMISOROrganization
Id:           EHMI.SOR.OrganizationalUnit.Organization
Title:        "EHMI SOR Organizational Unit"
Description:  """ EHMI SOR Organizational Unit OU (DK:OE) """
* type[SOR-Hierarchy] = $EHMISOROrganizationType#OU (exactly)

