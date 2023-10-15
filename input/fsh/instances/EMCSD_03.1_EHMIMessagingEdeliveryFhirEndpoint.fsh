Instance: EMCSD_03.1_SampleEHMIMessagingEdeliveryOioxmlEndpoint
InstanceOf: EHMIMessagingEdeliveryOioxmlEndpoint
Description: "An example of an EHMIMessagingEdeliveryOioxmlEndpoint."
* id = "EMCSD03.1"
* identifier.value = "EMCSD03.1"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/xyz)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/oioxml"
* payloadMimeType = #text/plain