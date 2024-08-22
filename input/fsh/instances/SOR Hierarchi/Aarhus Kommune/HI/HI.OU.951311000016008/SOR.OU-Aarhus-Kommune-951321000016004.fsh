Instance: EHMI.SOR.OU-AAR-Kommune.951321000016004
InstanceOf: EerSorOUOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.951321000016004"
* id = "EHMI.SOR.OU-AAR-Kommune.951321000016004"
* identifier[SOR].value = "951321000016004"
* name = "EHMI SOR OU AAR Kommune (951321000016004)"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI-AAR-Kommune.951311000016008)
//* endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryOioxml.01)
