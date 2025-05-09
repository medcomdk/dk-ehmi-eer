Instance: EerEndpoint-Messaging-AAR-eDeliveryFhir.5790002508226
InstanceOf: EerEndpointMessagingEdeliveryFhir
Description: "AAR EerEndpointMessagingEdeliveryFhir."
* id = "EerEndpoint-Messaging-AAR-eDeliveryFhir.01"
* identifier.value = "5790002508226"
* identifier.system = "https://www.gs1.org/gln" //$EerAuditEventAgentWhoIdentifierTypes
* identifier.type = $EerAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/Eer.Sor.IO-AAR-Kommune.311000016009)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://eDeliveryAccessPoint.aar.dk/fhir"
* extension[networkSupplySystem].valueReference = Reference(EerDeviceAP-MultiMedAP)
* payloadMimeType[0] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[0] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:2.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
