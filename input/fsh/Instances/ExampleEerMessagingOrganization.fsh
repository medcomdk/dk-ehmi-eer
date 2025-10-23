Instance: ExampleEerMessagingOrganization
InstanceOf: EerMessagingOrganization
Title: "Example EER Messaging Organization"
Description: "An example instance of the EER Messaging Organization with a required endpoint."
* id = "example-eer-messaging-organization"
* name = "Example Organization"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#OU
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
* telecom[0].system = #phone
* telecom[0].value = "+123456789"
* telecom[1].system = #email
* telecom[1].value = "info@example.org"
* address[0].line = "123 Example Street"
* address[0].city = "Example City"
* address[0].postalCode = "12345"
* endpoint[0].reference = "Endpoint/example-endpoint"

Instance: ExampleEndpoint
InstanceOf: EerEndpointMessagingEdelivery
Title: "Example EER Messaging Endpoint"
Description: "An example endpoint for the EER Messaging Organization."
* id = "example-endpoint"
* identifier.value = "543210987654321"
* status = #active
* period.start = "2025-01-01"
* connectionType.code = #EerMessagingEdelivery
* name = "Example FHIR Endpoint"
* managingOrganization.reference = "Organization/example-eer-messaging-organization"
* address = "https://example.org/fhir"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdhacknowledgement:1.0
