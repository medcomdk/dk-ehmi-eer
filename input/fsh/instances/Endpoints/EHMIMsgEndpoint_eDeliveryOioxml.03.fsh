/*
Instance: EHMIMessagingEndpoint-eDeliveryOioxml.01
InstanceOf: EHMIeDeliveryMessagingOioxmlEndpoint
Description: "An example of an EHMIeDeliveryMessagingOioxmlEndpoint."
* id = "EHMIMessagingEndpoint-eDeliveryOioxml.01"
* identifier.value = "EHMIMessagingEndpoint-eDeliveryOioxml.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI.01.1)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/oioxml"
* payloadMimeType = #text/plain
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
*/