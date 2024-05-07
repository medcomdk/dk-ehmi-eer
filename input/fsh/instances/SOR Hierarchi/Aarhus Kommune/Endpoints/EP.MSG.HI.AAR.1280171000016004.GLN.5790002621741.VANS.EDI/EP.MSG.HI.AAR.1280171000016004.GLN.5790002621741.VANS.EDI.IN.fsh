/*
Instance: EP.MSG.HI.AAR.1280171000016004.GLN.5790002621741.VANS.EDI.IN
InstanceOf: EHMIMessagingVansEdiEndpoint
Description: "AAR EHMIMessaging VansEdi Endpoint Inbound"
* id = "EP.MSG.HI.AAR.1280171000016004.GLN.5790002621741.VANS.EDI.IN"
* identifier.value = "5790002621741"
* identifier.system = $EHMIAuditEventAgentWhoIdentifierTypes
* identifier.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI-AAR-Kommune.1280171000016004)
* period.start = "2023-01-01"
//* period.end = "2024-01-01"
* address = "http://aar.dk/vans/edi/in"
* payloadMimeType[0] = #application/EDIFACT
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	"Negativ Vans kvittering"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	"Negativ kvittering"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	"Positiv kvittering"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:meddis:dis91:d9134l	"Korrespondancebrev"
*/