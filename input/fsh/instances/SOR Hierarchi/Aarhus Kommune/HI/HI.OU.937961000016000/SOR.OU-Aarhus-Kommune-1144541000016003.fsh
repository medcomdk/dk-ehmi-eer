Instance: Eer.Sor.OU-AAR-Kommune.1144541000016003
InstanceOf: EerSorOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.1144541000016003"
* id = "Eer.Sor.OU-AAR-Kommune.1144541000016003"
* identifier[SOR].type = $EerSorOrganizationIdentierType#SOR
* identifier[SOR].system = "1.2.208.176.1.1"
* identifier[SOR].value = "1144541000016003"
* name = "EER SOR OU AAR Kommune (1144541000016003)"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/Eer.Sor.HI-AAR-Kommune.937961000016000)
//* endpoint[0] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryOioxml.01)
