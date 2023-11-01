Instance: EP.MSG.HI.AAR.937961000016000.GLN.5790001998486.VANS.OIOXML.IN
InstanceOf: EHMIMessagingVansOioxmlEndpoint
Description: "AAR EHMIMessaging VansOioxml Endpoint Inbound"
* id = "EP.MSG.HI.AAR.937961000016000.GLN.5790001998486.VANS.OIOXML.IN"
* identifier.value = "5790001998486"
* identifier.system = $EHMIAuditEventAgentWhoIdentifierTypes
* identifier.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI-AAR-Kommune.951351000016007)
* period.start = "2023-01-01"
//* period.end = "2024-01-01"
* address = "http://aar.dk/vans/oioxml/in"
* payloadMimeType = #text/xml
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:meddis:xdis91:xd9134l	"ClinicalEmail"
