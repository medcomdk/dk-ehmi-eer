Instance: EerEndpoint-Messaging-AAR-eDeliveryFhir.5790000123117
InstanceOf: EerEndpointMessagingEdeliveryFhir
Description: "EerEndpoint-Messaging-AAR-eDeliveryFhir.5790000123117"
* id = "EerEndpoint-Messaging-AAR-eDeliveryFhir.5790000123117"
* identifier.value = "5790000123117"
* identifier.system = "http://www.gs1.org/gln"
* identifier.type = $EerAuditEventAgentWhoIdentifierTypes#GLN
* status = #active
* managingOrganization = Reference(Organization/Eer.Sor.IO-AAR-Kommune.311000016009)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://edelivery.endpoint.aar.dk/fhir/5790000123117"
* extension[ap-system].valueReference = Reference(EerDeviceAP-MultiMedAP)
* payloadMimeType[0] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[0] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.1
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
