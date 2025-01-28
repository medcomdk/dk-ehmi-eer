Instance: EER.SOR-OU.01
InstanceOf: EerMessagingOrganization
Description: "An example of an SOR OU Organization."
* id = "EER.SOR-OU.01"
* identifier[SOR-ID].value = "EER.SOR-OU.01"
* identifier[SOR-ID].type = $EerMessagingOrganizationIdentierType#SORID
* identifier[SOR-ID].system = $EerMessagingOrganizationIdentierSystem
* name = "EER.SOR-OU-Organization"
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
* partOf = Reference(Organization/EER.SOR-HI.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-eDeliveryFhir.01)
/*
* endpoint[0] = Reference(Endpoint/EerEndpoint-Messaging-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-eDeliveryOioxml.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-VansEdi.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-VansOioxml.01)
*/