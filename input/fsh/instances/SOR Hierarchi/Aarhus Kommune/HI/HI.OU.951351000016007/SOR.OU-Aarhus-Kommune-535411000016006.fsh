Instance: EHMI.SOR.OU-Aarhus-Kommune.535411000016006
InstanceOf: EHMISOROUOrganization
Description: "Sygehusadviser, Aarhus - SOR.OU-Aarhus-Kommune-SOR.535411000016006"
* id = "EHMI.SOR.OU-Aarhus-Kommune.535411000016006"
* identifier[SOR].value = "535411000016006"
* name = "EHMI SOR OU Aarhus Kommune (535411000016006)"
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EHMISOROrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI-Aarhus-Kommune-SOR.951351000016007)
* endpoint[0] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-eDeliveryEdi.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-eDeliveryFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-VansOioxml.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-eDeliveryOioxml.01)
