Instance: Eer.Sor.OU-AAR-Kommune.533301000016002
InstanceOf: EerMessagingOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.533301000016002"
* id = "Eer.Sor.OU-AAR-Kommune.533301000016002"
* identifier[SOR-ID].type = $EerMessagingOrganizationIdentierType#SORID
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "533301000016002"
* name = "EER SOR OU AAR Kommune (533301000016002)"
//* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#OE
//* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
* partOf = Reference(Organization/EER.SOR.HI-AAR-Kommune.533291000016001)
//*endpoint[0] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansEdi.01)
//*endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryEdi.01)
//*endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryFhir.01)
//*endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansOioxml.01)
//*endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryOioxml.01)
