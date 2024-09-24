Instance: EHMI.SOROU-EMCSD.SOR.OU.01
InstanceOf: EerSorOrganization
Description: "An example of an SOR OU Organization."
* id = "EHMI.SOROU-EMCSD.SOR.OU.01"
* identifier[SOR].value = "EHMI.SOROU-EMCSD.SOR.OU.01"
* name = "EHMI.SOR-OU-Organization"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/Eer.Sor.HI.01.1)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-eDeliveryFhir.01)
/*
* endpoint[0] = Reference(Endpoint/EerEndpoint-Messaging-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-eDeliveryOioxml.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-VansEdi.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-VansOioxml.01)
*/