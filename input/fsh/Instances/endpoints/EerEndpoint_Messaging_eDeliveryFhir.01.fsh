Instance: EerEndpoint-Messaging-eDeliveryFhir.01
InstanceOf: EerEndpointMessaging
Description: "An example of an EerEndpointMessaging supporting eDelivery FHIR."
* id = "EerEndpoint-Messaging-eDeliveryFhir.01"
* identifier[GLN-ID].value = "0000000000000"
* status = #active
* connectionType = $EerEndpointConnectionTypeCS#EerMessagingEdeliveryFhir
* managingOrganization = Reference(Organization/EER.SOR-HI.01)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.eDeliveryAccessPoint.dk/fhir"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition::homecareobservation-message##urn:dk:medcom:fhir:homecareobservation-message::1.2
* payloadType[+] = $EhmiMessageDefinitionUri##urn:dk:healthcare:medcom:messaging:fhir:structuredefinition::acknowledgement-message##urn:dk:medcom:fhir:acknowledgement-message::2.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:messaging:oasis:ebxml:schema:xsd::ehmisbdh-acknowledgement##urn:dk:ehmi:sbdh:ehmisbdh-acknowledgement::1.0
