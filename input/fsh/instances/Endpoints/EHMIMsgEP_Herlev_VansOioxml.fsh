/*
Instance: EerMessagingEndpoint-Herlev-VansOioxml.5790002508226
InstanceOf: EerMessagingVansOioxmlEndpoint
Description: "Herlev EerMessagingVansOioxmlEndpoint."
* id = "EerMessagingEndpoint-Herlev-VansOioxml.01"
* identifier.value = "5790002508226"
* identifier.system = $EerAuditEventAgentWhoIdentifierTypes
* identifier.type = $EerAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/Eer.Sor.IO-Herlev-Kommune-SOR.101000016005)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/oioxml"
* payloadMimeType = #text/plain
* payloadType[0] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
* payloadType[+] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
* payloadType[+] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
*/