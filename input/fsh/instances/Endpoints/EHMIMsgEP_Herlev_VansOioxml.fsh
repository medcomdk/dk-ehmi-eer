Instance: EHMIMessagingEndpoint-Herlev-VansOioxml.01
InstanceOf: EHMIMessagingVansOioxmlEndpoint
Description: "An example of an EHMIMessagingVansOioxmlEndpoint."
* id = "EHMIMessagingEndpoint-Herlev-VansOioxml.01"
* identifier.value = "EHMIMessagingEndpoint-Herlev-VansOioxml.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.IO-HERLEV-KOMMUNE-SOR.101000016005)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/oioxml"
* payloadMimeType = #text/plain
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
