Instance: EER.SOR-HI.01
InstanceOf: EerSorOrganization
Description: "An example of an SOR HI Organization."
* id = "EER.SOR-HI.01"
* identifier.value = "EER.SOR-HI.01"
* identifier.type = $EerSorOrganizationIdentierType#SORID
* identifier.system = "urn:oid:1.2.208.176.1.1"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#SI
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* type[SOR-UnitType].coding.code = $EerSorUnitType#genoptræningsenhed
* name = "EER-SOR-HI-Organization"
* partOf = Reference(Organization/EER.SOR.IO.01)