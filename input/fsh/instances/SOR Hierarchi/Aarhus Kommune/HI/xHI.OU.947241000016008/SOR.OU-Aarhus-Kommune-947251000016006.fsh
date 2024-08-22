Instance: EHMI.SOR.OU-AAR-Kommune.947251000016006
InstanceOf: EerSorOUOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.947251000016006"
* id = "EHMI.SOR.OU-AAR-Kommune.947251000016006"
* identifier[SOR].value = "947251000016006"
* name = "EHMI SOR OU AAR Kommune (947251000016006)"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI-AAR-Kommune.947241000016008)
//* endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryOioxml.01)
