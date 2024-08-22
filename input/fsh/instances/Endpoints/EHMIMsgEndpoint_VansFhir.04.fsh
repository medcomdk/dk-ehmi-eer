Instance: EerMessagingEndpoint-VansFhir.01
InstanceOf: EerMessagingVansFhirEndpoint
Description: "An example of an EerMessagingEndpoint-VansFhir.01."
* id = "EerMessagingEndpoint-VansFhir.01"
* identifier.value = "EerMessagingEndpoint-VansFhir.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI.01.1)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/fhir"
* payloadMimeType = #text/plain
* payloadType = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
