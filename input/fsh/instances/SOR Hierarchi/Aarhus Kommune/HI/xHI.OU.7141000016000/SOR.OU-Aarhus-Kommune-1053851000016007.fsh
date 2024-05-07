Instance: EER.SOR.OU-AAR-Kommune-SOR.1053851000016007
InstanceOf: EerSOROUOrganization
Description: "LÆ- blanketter, suppl. kommunikation, AAR - SOR.OU-AAR-Kommune-SOR.1053851000016007"
* id = "EER.SOR.OU-AAR-Kommune-SOR.1053851000016007"
* identifier[SOR].value = "1053851000016007"
* name = "EER SOR OU AAR Kommune (1053851000016007)"
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* partOf = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
////* endpoint[0] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansEdi.01)
////* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryEdi.01)
////* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryFhir.01)
////* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansOioxml.01)
////* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryOioxml.01)
