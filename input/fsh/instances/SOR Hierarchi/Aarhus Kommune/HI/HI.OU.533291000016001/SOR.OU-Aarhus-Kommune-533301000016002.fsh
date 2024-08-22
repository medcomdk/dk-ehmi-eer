Instance: Eer.Sor.OU-AAR-Kommune.533301000016002
InstanceOf: EerSorOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.533301000016002"
* id = "Eer.Sor.OU-AAR-Kommune.533301000016002"
* identifier[SOR].value = "533301000016002"
* name = "EHMI SOR OU AAR Kommune (533301000016002)"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/Eer.Sor.HI-AAR-Kommune.533291000016001)
//*endpoint[0] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansEdi.01)
//*endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryEdi.01)
//*endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryFhir.01)
//*endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-VansOioxml.01)
//*endpoint[+] = Reference(Endpoint/EerMessagingEndpoint-AAR-eDeliveryOioxml.01)
