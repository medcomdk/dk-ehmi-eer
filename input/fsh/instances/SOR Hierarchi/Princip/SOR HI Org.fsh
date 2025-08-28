Instance: EER.SOR-HI.01
InstanceOf: EerMessagingOrganization
Description: "An example of an SOR HI Organization."
* id = "EER.SOR-HI.01"
* identifier[SOR-ID].value = "0000000000101"
* identifier[SOR-ID].type = $EerMessagingOrganizationIdentierType#SORID
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
//* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#SI
//* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
* type[SOR-UnitType].coding.code = $EerSorUnitType#genoptræningsenhed
* name = "EER-SOR-HI-Organization"
* partOf = Reference(Organization/EER.SOR.IO.01)