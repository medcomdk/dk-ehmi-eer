Instance: Eer.Sor.OU-AAR-Kommune.535411000016006
InstanceOf: EerMessagingOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.535411000016006"
* id = "Eer.Sor.OU-AAR-Kommune.535411000016006"
* identifier[SOR-ID].type = $EerMessagingOrganizationIdentierType#SORID
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "535411000016006"
* name = "EER SOR OU AAR Kommune (535411000016006)"
//* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#OE
//* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
* partOf = Reference(Organization/EER.SOR.HI-AAR-Kommune.951351000016007)
//* endpoint[0] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansEdi.01)
//*endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryEdi.01)
//*endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansOioxml.01)
//*endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryOioxml.01)
