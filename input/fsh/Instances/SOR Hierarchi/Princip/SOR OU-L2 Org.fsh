Instance: EER.SOR-OU.01.01
InstanceOf: EerMessagingOrganization
Description: "An example of an SOR OU Organization."
* id = "EER.SOR-OU.01.01"
* identifier[SOR-ID].value = "000000000010102"
* identifier[SOR-ID].type = $EerMessagingOrganizationIdentierType#SORID
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "EER.SOR-OU-Organization"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
* partOf = Reference(Organization/EER.SOR-OU.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-eDeliveryFhir.01)