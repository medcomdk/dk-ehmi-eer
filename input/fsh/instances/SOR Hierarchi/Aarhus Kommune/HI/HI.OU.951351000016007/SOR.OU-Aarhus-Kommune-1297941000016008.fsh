Instance: Eer.Sor.OU-AAR-Kommune.1297941000016008
InstanceOf: EerSorOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.1297941000016008"
* id = "Eer.Sor.OU-AAR-Kommune.1297941000016008"
* identifier[SOR].value = "1297941000016008"
* name = "EHMI SOR OU AAR Kommune (1297941000016008)"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/Eer.Sor.HI-AAR-Kommune.951351000016007)
//* endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryOioxml.01)
