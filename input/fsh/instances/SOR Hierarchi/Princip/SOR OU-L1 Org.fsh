Instance: EHMI.SOROU-EMCSD.SOR.OU.01
InstanceOf: EHMISOROUOrganization
Description: "An example of an SOR OU Organization."
* id = "EHMI.SOROU-EMCSD.SOR.OU.01"
* identifier.value = "EHMI.SOROU-EMCSD.SOR.OU.01"
* name = "EHMI.SOR-OU-Organization"
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#OU
* type[SOR-Hierarchy].coding.system = $EHMISOROrganizationType
* partOf = Reference(Organization/EHMI.SOR.HI.01.1)
* endpoint[0] = Reference(Endpoint/EHMIMessagingEndpoint-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-eDeliveryFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-eDeliveryOioxml.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-VansEdi.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-VansFhir.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-VansOioxml.01)
