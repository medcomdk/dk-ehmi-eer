Instance: EER.SOR.OU-AAR-Kommune.1144541000016003
InstanceOf: EerSOROUOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune-SOR.1144541000016003"
* id = "EER.SOR.OU-AAR-Kommune.1144541000016003"
* identifier[SOR].value = "1144541000016003"
* name = "EER SOR OU AAR Kommune (1144541000016003)"
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* partOf = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
//* endpoint[0] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-AAR-eDeliveryOioxml.01)
