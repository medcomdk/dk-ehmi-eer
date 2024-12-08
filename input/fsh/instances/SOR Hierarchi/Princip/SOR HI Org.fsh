Instance: EER.SOR-HI.01
InstanceOf: EerSorOrganization
Description: "An example of an SOR HI Organization."
* id = "EER.SOR-HI.01"
* identifier[SOR].value = "EER.SOR-HI.01"
* identifier[SOR].type = $EerSorOrganizationIdentierType#SORID
* identifier[SOR].system = "1.2.208.176.1.1"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#SI
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* type[SOR-UnitType].coding.code = $EerSorUnitType#genoptræningsenhed
* name = "EER-SOR-HI-Organization"
* partOf = Reference(Organization/EER.SOR.IO.01)