Instance: EerEndpoint-Messaging-AAR-eDeliveryFhir.5790000123117
InstanceOf: EerEndpointMessaging
Description: "EerEndpoint-Messaging-AAR-eDeliveryFhir.5790000123117"
* id = "EerEndpoint-Messaging-AAR-eDeliveryFhir.5790000123117"
* connectionType = $EerEndpointConnectionTypeCS#eerMessagingEdeliveryFhir
* identifier[GLN-ID].value = "5790000123117"
* status = #active
* managingOrganization = Reference(Organization/Eer.Sor.IO-AAR-Kommune.311000016009)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://edelivery.endpoint.aar.dk/fhir/5790000123117"
* extension[networkSupplySystem].valueReference = Reference(EerDeviceAP-MultiMedAP)
* payloadMimeType[0] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[0] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.1
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
