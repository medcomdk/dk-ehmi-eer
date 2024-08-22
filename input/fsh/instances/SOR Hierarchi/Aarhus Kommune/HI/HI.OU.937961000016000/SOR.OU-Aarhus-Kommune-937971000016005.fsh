Instance: EHMI.SOR.OU-AAR-Kommune.937971000016005
InstanceOf: EHMISOROUOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune-SOR.937971000016005"
* id = "EHMI.SOR.OU-AAR-Kommune.937971000016005"
* identifier[SOR].value = "937971000016005"
* name = "EHMI SOR OU AAR Kommune (937971000016005)"
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EHMISOROrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI-AAR-Kommune.937961000016000)
* endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansEdi.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansOioxml.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryOioxml.01)
