Instance: EER.SOR-OU.01
InstanceOf: EerSorOrganization
Description: "An example of an SOR OU Organization."
* id = "EER.SOR-OU.01"
* identifier.value = "EER.SOR-OU.01"
* identifier.type = $EerSorOrganizationIdentierType#SORID
* identifier.system = "urn:oid:1.2.208.176.1.1"
* name = "EER.SOR-OU-Organization"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/EER.SOR-HI.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-eDeliveryFhir.01)
/*
* endpoint[0] = Reference(Endpoint/EerEndpoint-Messaging-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-eDeliveryOioxml.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-VansEdi.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-VansOioxml.01)
*/