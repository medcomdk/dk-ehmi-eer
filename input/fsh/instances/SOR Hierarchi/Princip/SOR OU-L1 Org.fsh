Instance: EHMI.SOROU-EMCSD.SOR.OU.01
InstanceOf: EerSorOUOrganization
Description: "An example of an SOR OU Organization."
* id = "EHMI.SOROU-EMCSD.SOR.OU.01"
* identifier[SOR].value = "EHMI.SOROU-EMCSD.SOR.OU.01"
* name = "EHMI.SOR-OU-Organization"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI.01.1)
* endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-eDeliveryFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-eDeliveryOioxml.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-VansEdi.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-VansOioxml.01)
