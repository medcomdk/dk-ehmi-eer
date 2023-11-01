Instance: EHMIMessagingEndpoint-AAR-VansFhir.5790002508226
InstanceOf: EHMIMessagingVansFhirEndpoint
Description: "AAR EHMIMessagingEndpoint-AAR-VansFhir.01."
* id = "EHMIMessagingEndpoint-AAR-VansFhir.01"
* identifier.value = "5790002508226"
* identifier.system = $EHMIAuditEventAgentWhoIdentifierTypes
* identifier.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.IO-AAR-Kommune.311000016009)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://aar.dk/fhir"
* payloadMimeType = #text/plain
* payloadType = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
