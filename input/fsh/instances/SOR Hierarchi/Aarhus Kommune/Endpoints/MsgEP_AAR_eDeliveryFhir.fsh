Instance: EHMIMessagingEndpoint-AAR-eDeliveryFhir.5790002508226
InstanceOf: EHMICoreMessagingFhirEndpoint
Description: "AAR EHMICoreMessagingFhirEndpoint."
* id = "EHMIMessagingEndpoint-AAR-eDeliveryFhir.01"
* identifier.value = "5790002508226"
* identifier.system = $EHMIAuditEventAgentWhoIdentifierTypes
* identifier.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.IO-AAR-Kommune.311000016009)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://aar.dk/fhir"
* payloadMimeType[0] = #application/fhir+xml
//* payloadMimeType[1] = #application/fhir+json
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
//* payloadType[1] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
