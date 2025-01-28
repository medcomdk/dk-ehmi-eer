Instance: EER.SOR-HI.01
InstanceOf: EerMessagingOrganization
Description: "An example of an SOR HI Organization."
* id = "EER.SOR-HI.01"
* identifier[SOR-ID].value = "EER.SOR-HI.01"
* identifier[SOR-ID].type = $EerMessagingOrganizationIdentierType#SORID
* identifier[SOR-ID].system = $EerMessagingOrganizationIdentierSystem
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#SI
* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
* type[SOR-UnitType].coding.code = $EerSorUnitType#genoptræningsenhed
* name = "EER-SOR-HI-Organization"
* partOf = Reference(Organization/EER.SOR.IO.01)