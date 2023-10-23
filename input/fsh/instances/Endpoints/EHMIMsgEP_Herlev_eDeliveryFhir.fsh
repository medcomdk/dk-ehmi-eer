Instance: EHMIMessagingEndpoint-Herlev-eDeliveryFhir.01
InstanceOf: EHMIMessagingEdeliveryFhirEndpoint
Description: "An example of an EHMIMessagingEdeliveryFhirEndpoint."
* id = "EHMIMessagingEndpoint-Herlev-eDeliveryFhir.01"
* identifier.value = "EHMIMessagingEndpoint-Herlev-eDeliveryFhir.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.IO-Herlev-Kommune-SOR.101000016005)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://herlev.dk/fhir"
* payloadMimeType = #text/plain
* payloadType = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
