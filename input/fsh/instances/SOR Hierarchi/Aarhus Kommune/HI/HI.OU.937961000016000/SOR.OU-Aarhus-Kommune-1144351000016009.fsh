Instance: Eer.Sor.OU-AAR-Kommune.1144351000016009
InstanceOf: EerMessagingOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.1144351000016009"
* id = "Eer.Sor.OU-AAR-Kommune.1144351000016009"
* identifier.type = $EerMessagingOrganizationIdentierType#SORID
* identifier.system = "urn:oid:1.2.208.176.1.1"
* identifier.value = "1144351000016009"
* name = "EER SOR OU AAR Kommune (1144351000016009)"
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
* partOf = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
//* endpoint[0] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryOioxml.01)
