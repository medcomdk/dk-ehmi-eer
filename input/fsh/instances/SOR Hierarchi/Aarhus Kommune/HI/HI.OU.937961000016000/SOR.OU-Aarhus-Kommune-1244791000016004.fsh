Instance: Eer.Sor.OU-AAR-Kommune.1244791000016004
InstanceOf: EerMessagingOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.1244791000016004"
* id = "Eer.Sor.OU-AAR-Kommune.1244791000016004"
* identifier[SOR-ID].type = $EerMessagingOrganizationIdentierType#SORID
* identifier[SOR-ID].system = $EerMessagingOrganizationIdentierSystem
* identifier[SOR-ID].value = "1244791000016004"
* name = "EER SOR OU AAR Kommune (1244791000016004)"
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
* partOf = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
//* endpoint[0] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryOioxml.01)
