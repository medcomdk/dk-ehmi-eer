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
* telecom[+]
  * system = #phone
  * value = "+123456789"
* telecom[+]
  * system = #email
  * value = "info@example.org"
* address[+]
  * line = "123 Example Street"
  * city = "Example City"
  * postalCode = "12345"
* endpoint[+]
  * reference = "Endpoint/example-endpoint"

Instance: ExampleEndpoint
InstanceOf: EerEndpointMessaging
Title: "Example EER Messaging Endpoint"
Description: "An example endpoint for the EER Messaging Organization."
* id = "example-endpoint"
* identifier[GLN-ID].value = "543210987654321"
* status = #active
* period.start = "2025-01-01"
* connectionType = $EerEndpointConnectionTypeCS#EerMessagingEdelivery
* name = "Example FHIR Endpoint"
* managingOrganization.reference = "Organization/example-eer-messaging-organization"
* address.value = "https://example.org/fhir"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdhacknowledgement:1.0
