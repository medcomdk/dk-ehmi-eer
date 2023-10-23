Instance: EHMI.SOROU-EMCSD.SOR.OU.01
InstanceOf: EHMISOROUOrganization
Description: "An example of an SOR OU Organization."
* id = "EHMI.SOROU-EMCSD.SOR.OU.01"
* identifier.value = "EHMI.SOROU-EMCSD.SOR.OU.01"
* name = "EHMI.SOR-OU-Organization"
* type[SOR-Hierarchy] = $EHMISOROrganizationType#OU
* type[SOR-Hierarchy].coding.system = $EHMISOROrganizationType
* partOf = Reference(Organization/EHMI.EMCSD.SOR.HI.01.1)
* endpoint[0] = Reference(Endpoint/Endpoint.EMCSD.01.1)
* endpoint[+] = Reference(Endpoint/Endpoint.EMCSD.02.1)
* endpoint[+] = Reference(Endpoint/Endpoint.EMCSD.03.1)
* endpoint[+] = Reference(Endpoint/Endpoint.EMCSD.04.1)
* endpoint[+] = Reference(Endpoint/Endpoint.EMCSD.05.1)
* endpoint[+] = Reference(Endpoint/Endpoint.EMCSD.06.1)
