Instance: EHMIMessagingEndpoint-VansFhir.01
InstanceOf: EHMIMessagingVansFhirEndpoint
Description: "An example of an EHMIMessagingEndpoint-VansFhir.01."
* id = "EHMIMessagingEndpoint-VansFhir.01"
* identifier.value = "EHMIMessagingEndpoint-VansFhir.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.IO.01)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/fhir"
* payloadMimeType = #text/plain