Instance: EHMI.SOR.OU-AAR-Kommune.1336701000016008
InstanceOf: EHMISOROUOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.1336701000016008"
* id = "EHMI.SOR.OU-AAR-Kommune.1336701000016008"
* identifier[SOR].value = "1336701000016008"
* name = "EHMI SOR OU AAR Kommune (1336701000016008)"
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EHMISOROrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI-AAR-Kommune.951351000016007)
* endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansEdi.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansOioxml.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryOioxml.01)
