Instance: EerMessagingEndpoint-eDeliveryFhir.01
InstanceOf: EereDeliveryMessagingFhirEndpoint
Description: "An example of an EereDeliveryMessagingFhirEndpoint."
* id = "EerMessagingEndpoint-eDeliveryFhir.01"
* identifier.value = "EerMessagingEndpoint-eDeliveryFhir.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/Eer.Sor.HI.01.1)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.eDeliveryAccessPoint.dk/fhir"
* payloadMimeType = #text/plain
* payloadType = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
