Instance: Eer.Sor.OU-AAR-Kommune.951321000016004
InstanceOf: EerSorOrganization
Description: "Sygehusadviser, AAR - SOR.OU-AAR-Kommune.951321000016004"
* id = "Eer.Sor.OU-AAR-Kommune.951321000016004"
* identifier[SOR].type = $EerSorOrganizationIdentierType#SORID
* identifier[SOR].system = "1.2.208.176.1.1"
* identifier[SOR].value = "951321000016004"
* name = "EER SOR OU AAR Kommune (951321000016004)"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationType
* partOf = Reference(Organization/EER.SOR.HI-AAR-Kommune.951311000016008)
//* endpoint[0] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EerEndpoint-Messaging-AAR-eDeliveryOioxml.01)
