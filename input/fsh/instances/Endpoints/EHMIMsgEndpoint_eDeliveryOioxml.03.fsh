/*
Instance: EerMessagingEndpoint-eDeliveryOioxml.01
InstanceOf: EereDeliveryMessagingOioxmlEndpoint
Description: "An example of an EereDeliveryMessagingOioxmlEndpoint."
* id = "EerMessagingEndpoint-eDeliveryOioxml.01"
* identifier.value = "EerMessagingEndpoint-eDeliveryOioxml.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI.01.1)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/oioxml"
* payloadMimeType = #text/plain
* payloadType[0] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
* payloadType[+] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
* payloadType[+] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
*/