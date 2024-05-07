Instance: EHMI.SOROU-EMCSD.SOR.OU.01
InstanceOf: EerSOROUOrganization
Description: "An example of an SOR OU Organization."
* id = "EHMI.SOROU-EMCSD.SOR.OU.01"
* identifier[SOR].value = "EHMI.SOROU-EMCSD.SOR.OU.01"
* name = "EHMI.SOR-OU-Organization"
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#OE
* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* partOf = Reference(Organization/EER.SOR.HI.01.1)
//* endpoint[0] = Reference(Endpoint/EHMIMessagingEndpoint-eDeliveryEdi.01)
* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-eDeliveryFhir.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-eDeliveryOioxml.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-VansEdi.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-VansFhir.01)
//* endpoint[+] = Reference(Endpoint/EHMIMessagingEndpoint-VansOioxml.01)
