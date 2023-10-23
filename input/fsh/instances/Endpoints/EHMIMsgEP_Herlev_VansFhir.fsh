Instance: EHMIMessagingEndpoint-Herlev-VansFhir.01
InstanceOf: EHMIMessagingVansFhirEndpoint
Description: "An example of an EHMIMessagingEndpoint-Herlev-VansFhir.01."
* id = "EHMIMessagingEndpoint-Herlev-VansFhir.01"
* identifier.value = "EHMIMessagingEndpoint-Herlev-VansFhir.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.IO-HERLEV-KOMMUNE-SOR.101000016005)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/fhir"
* payloadMimeType = #text/plain
* payloadType = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
