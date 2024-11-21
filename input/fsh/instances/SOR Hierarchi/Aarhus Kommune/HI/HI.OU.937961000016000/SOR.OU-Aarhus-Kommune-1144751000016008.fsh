Instance: Eer.Sor.OU-AAR-Kommune.1144751000016008
InstanceOf: EerSorOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.1144751000016008"
* id = "Eer.Sor.OU-AAR-Kommune.1144751000016008"
* identifier[SOR].type = $EerSorOrganizationIdentierType#SORID
* identifier[SOR].system = "1.2.208.176.1.1"
* identifier[SOR].value = "1144751000016008"
* name = "EER SOR OU AAR Kommune (1144751000016008)"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
//* endpoint[0] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryOioxml.01)
