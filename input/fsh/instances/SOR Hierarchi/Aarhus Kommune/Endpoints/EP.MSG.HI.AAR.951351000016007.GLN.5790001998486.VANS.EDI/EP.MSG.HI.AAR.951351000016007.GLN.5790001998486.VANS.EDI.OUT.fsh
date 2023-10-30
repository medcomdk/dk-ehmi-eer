Instance: EP.MSG.HI.AAR.937961000016000.GLN.5790001998486.VANS.EDI.OUT
InstanceOf: EHMIMessagingVansEdiEndpoint
Description: "Aarhus EHMIMessaging VansEdi Endpoint Inbound"
* id = "EP.MSG.HI.AAR.937961000016000.GLN.5790001998486.VANS.EDI.OUT"
* identifier.value = "5790001998486"
* identifier.system = $EHMIAuditEventAgentWhoIdentifierTypes
* identifier.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI-Aarhus-Kommune.951351000016007)
* period.start = "2023-01-01"
//* period.end = "2024-01-01"
* address = "http://aarhus.dk/vans/edi/out"
* payloadMimeType[0] = #application/EDIFACT
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	"Negativ Vans kvittering"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	"Negativ kvittering"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	"Positiv kvittering"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:meddis:dis01:d0134l	"Udskrivningsepikrise"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:meddis:dis91:d9134l	"Korrespondancebrev"
