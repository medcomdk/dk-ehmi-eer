Instance: EHMI.SOR.OU-AAR-Kommune-SOR.951401000016003
InstanceOf: EHMISOROUOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune-SOR.951401000016003"
* id = "EHMI.SOR.OU-AAR-Kommune.951401000016003"
* identifier[SOR].value = "951401000016003"
* name = "EHMI SOR OU AAR Kommune (951401000016003)"
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EHMISOROrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI-AAR-Kommune-SOR.951351000016007)
* endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryOioxml.01)
