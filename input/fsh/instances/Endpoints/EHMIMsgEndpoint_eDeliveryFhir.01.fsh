Instance: EHMIMessagingEndpoint-eDeliveryFhir.01
InstanceOf: EHMIMessagingEdeliveryFhirEndpoint
Description: "An example of an EHMIMessagingEdeliveryFhirEndpoint."
* id = "EHMIMessagingEndpoint-eDeliveryFhir.01"
* identifier.value = "EHMIMessagingEndpoint-eDeliveryFhir.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EMCSD.SOR.IO.01.1)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/fhir"
* payloadMimeType = #text/plain