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
* address = "http://aarhus.dk/vans/edi/in"
* payloadMimeType[0] = #application/EDIFACT
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	"NegativeVansReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	"NegativeReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	"PositivReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:meddis:dis91:d9134l	"Udskrivningsepikrise"
