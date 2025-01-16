Instance: EerEndpoint-Messaging-eDeliveryFhir.01
InstanceOf: EerEndpointMessagingEdeliveryFhir
Description: "An example of an EerEndpointMessagingEdeliveryFhir."
* id = "EerEndpoint-Messaging-eDeliveryFhir.01"
* identifier.value = "EerEndpoint-Messaging-eDeliveryFhir.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EER.SOR-HI.01)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.eDeliveryAccessPoint.dk/fhir"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EerMessageDefinitionUriVS#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $EerMessageDefinitionUriVS#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EerMessageDefinitionUriVS#urn:dk:healthcare:medcom:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EerMessageDefinitionUriVS#urn:dk:healthcare:medcom:messaging:envelope:xml:sbdhacknowledgement:1.0
