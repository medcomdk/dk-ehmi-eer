Instance: Eer.Sor.OU-AAR-Kommune.937971000016005
InstanceOf: EerSorOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune-SOR.937971000016005"
* id = "Eer.Sor.OU-AAR-Kommune.937971000016005"
* identifier[SOR].value = "937971000016005"
* name = "EHMI SOR OU AAR Kommune (937971000016005)"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/Eer.Sor.HI-AAR-Kommune.937961000016000)
//* endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryOioxml.01)
