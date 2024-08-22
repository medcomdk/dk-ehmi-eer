Instance: EerMessagingEndpoint-VansEdi.01
InstanceOf: EerMessagingVansEdiEndpoint
Description: "An example of an EerMessagingVansEdiEndpoint."
* id = "EerMessagingEndpoint-VansEdi.01"
* identifier.value = "EerMessagingEndpoint-VansEdi.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI.01.1)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/edi"
* payloadMimeType = #text/plain
* payloadType[0] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
* payloadType[+] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	
* payloadType[+] = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	
