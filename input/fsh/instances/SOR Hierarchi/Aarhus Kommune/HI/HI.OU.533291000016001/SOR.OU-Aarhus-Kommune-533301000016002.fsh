Instance: EHMI.SOR.OU-Aarhus-Kommune.533301000016002
InstanceOf: EHMISOROUOrganization
Description: "Sygehusadviser, Aarhus - SOR.OU-Aarhus-Kommune.533301000016002"
* id = "EHMI.SOR.OU-Aarhus-Kommune.533301000016002"
* identifier[SOR].value = "533301000016002"
* name = "EHMI SOR OU Aarhus Kommune (533301000016002)"
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EHMISOROrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI-Aarhus-Kommune.533291000016001)
* endpoint[0] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-VansEdi.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-eDeliveryFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-VansOioxml.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-Aarhus-eDeliveryOioxml.01)
