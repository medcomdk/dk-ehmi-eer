Instance: EHMI.SOR.OU-AAR-Kommune.951361000016005
InstanceOf: EerSorOUOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.951361000016005"
* id = "EHMI.SOR.OU-AAR-Kommune.951361000016005"
* identifier[SOR].value = "951361000016005"
* name = "EHMI SOR OU AAR Kommune (951361000016005)"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI-AAR-Kommune.951351000016007)
//* endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryOioxml.01)
