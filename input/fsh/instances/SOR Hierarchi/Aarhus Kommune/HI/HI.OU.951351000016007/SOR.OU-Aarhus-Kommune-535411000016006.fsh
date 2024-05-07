Instance: EER.SOR.OU-AAR-Kommune.535411000016006
InstanceOf: EerSOROUOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune-SOR.535411000016006"
* id = "EER.SOR.OU-AAR-Kommune.535411000016006"
* identifier[SOR].value = "535411000016006"
* name = "EER SOR OU AAR Kommune (535411000016006)"
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* partOf = Reference(Organization/EER.SOR.HI-AAR-Kommune.951351000016007)
//* endpoint[0] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansEdi.01)
////* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryEdi.01)
////* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansOioxml.01)
////* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryOioxml.01)
