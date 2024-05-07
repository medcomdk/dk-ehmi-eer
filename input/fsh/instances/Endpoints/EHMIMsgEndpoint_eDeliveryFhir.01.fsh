Instance: EHMIMessagingEndpoint-eDeliveryFhir.01
InstanceOf: EHMIeDeliveryMessagingFhirEndpoint
Description: "An example of an EHMIeDeliveryMessagingFhirEndpoint."
* id = "EHMIMessagingEndpoint-eDeliveryFhir.01"
* identifier.value = "EHMIMessagingEndpoint-eDeliveryFhir.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EER.SOR.HI.01.1)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/fhir"
* payloadMimeType = #text/plain
* payloadType = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
