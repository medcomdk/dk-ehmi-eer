Instance: EHMI.SOR.OU-AAR-Kommune.1028251000016001
InstanceOf: EHMISOROUOrganization
Description: "LÆ- blanketter, suppl. kommunikation, AAR - SOR.OU-AAR-Kommune.1028251000016001"
* id = "EHMI.SOR.OU-AAR-Kommune.1028251000016001"
* identifier[SOR].value = "1028251000016001"
* name = "EHMI SOR OU AAR Kommune (1028251000016001)"
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EHMISOROrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI-AAR-Kommune.947241000016008)
* endpoint[0] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansEdi.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansOioxml.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryOioxml.01)
