Instance: EER.SOR.OU-AAR-Kommune.1028251000016001
InstanceOf: EerSOROUOrganization
Description: "LÆ- blanketter, suppl. kommunikation, AAR - SOR.OU-AAR-Kommune.1028251000016001"
* id = "EER.SOR.OU-AAR-Kommune.1028251000016001"
* identifier[SOR].value = "1028251000016001"
* name = "EER SOR OU AAR Kommune (1028251000016001)"
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* partOf = Reference(Organization/EER.SOR.HI-AAR-Kommune.947241000016008)
//* endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryOioxml.01)
