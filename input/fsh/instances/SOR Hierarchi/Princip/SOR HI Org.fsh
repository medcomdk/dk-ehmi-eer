Instance: EHMISORHIOrganization_1.0
InstanceOf: EHMISORHIOrganization
Description: "An example of an SOR HI Organization."
* id = "EHMI.SOR.HI.01.1"
* identifier[SOR].value = "EHMI.SOR.HI.01.1"
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#HI
* type[SOR-UnitType].coding.code = $EHMISORUnitType#genoptræningsenhed
* name = "EHMI-SOR-HI-Organization"
* partOf = Reference(Organization/EHMI.SOR.IO.01)