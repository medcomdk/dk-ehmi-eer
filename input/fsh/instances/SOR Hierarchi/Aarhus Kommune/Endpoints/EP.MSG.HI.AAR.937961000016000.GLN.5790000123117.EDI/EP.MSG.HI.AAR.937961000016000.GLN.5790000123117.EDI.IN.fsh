Instance: EP.MSG.HI.AAR.937961000016000.GLN.5790000123117.VANS.EDI.IN
InstanceOf: EHMIMessagingVansEdiEndpoint
Description: "Aarhus EHMIMessaging VansEdi Endpoint Inbound"
* id = "EP.MSG.HI.AAR.937961000016000.GLN.5790000123117.VANS.EDI.IN"
* identifier.value = "5790000123117"
* identifier.system = $EHMIAuditEventAgentWhoIdentifierTypes
* identifier.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI-Aarhus-Kommune.937961000016000)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://aarhus.dk/vans/edi"
* payloadMimeType[0] = #text/plain
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
* payloadType[1] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
