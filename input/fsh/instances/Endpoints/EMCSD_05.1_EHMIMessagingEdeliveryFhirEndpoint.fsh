Instance: EMCSD_02.1_SampleEHMIMessagingVansEdiEndpoint
InstanceOf: EHMIMessagingVansEdiEndpoint
Description: "An example of an EHMIMessagingVansEdiEndpoint."
* id = "EMCSD05.1"
* identifier.value = "Endpoint.EMCSD.05.1"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EMCSD.SOR.IO.01.1)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/edi"
* payloadMimeType = #text/plain
