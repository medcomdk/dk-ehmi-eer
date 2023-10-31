Instance: EHMI.SOR.OU-Aarhus-Kommune.1144541000016003
InstanceOf: EHMISOROUOrganization
Description: "Sygehusadviser, Aarhus - SOR.OU-Aarhus-Kommune-SOR.1144541000016003"
* id = "EHMI.SOR.OU-Aarhus-Kommune.1144541000016003"
* identifier[SOR].value = "1144541000016003"
* name = "EHMI SOR OU Aarhus Kommune (1144541000016003)"
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EHMISOROrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI-Aarhus-Kommune.937961000016000)
* endpoint[0] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-VansEdi.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-eDeliveryFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-VansOioxml.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-eDeliveryOioxml.01)
