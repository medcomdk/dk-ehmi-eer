/*
Instance: EP.MSG.HI.AAR.937961000016000.GLN.5790001998486.VANS.OIOXML.OUT
InstanceOf: EerMessagingVansOioxmlEndpoint
Description: "AAR EerMessaging VansEdi Endpoint Outbound"
* id = "EP.MSG.HI.AAR.937961000016000.GLN.5790001998486.VANS.OIOXML.OUT"
* identifier.value = "5790000123117"
* identifier.system = $EerAuditEventAgentWhoIdentifierTypes
* identifier.type = $EerAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI-AAR-Kommune.951351000016007)
* period.start = "2023-01-01"
//* period.end = "2024-01-01"
* address = "http://aar.dk/vans/edi/out"
* payloadMimeType = #text/xml
* payloadType[0] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
* payloadType[+] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
* payloadType[+] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
* payloadType[+] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:meddis:xdis91:xd9134l	"ClinicalEmail"
*/