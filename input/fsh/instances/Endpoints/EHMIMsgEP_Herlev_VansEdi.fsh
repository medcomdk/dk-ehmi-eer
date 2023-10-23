Instance: EHMIMessagingEndpoint-Herlev-VansEdi.01
InstanceOf: EHMIMessagingVansEdiEndpoint
Description: "An example of an EHMIMessagingVansEdiEndpoint."
* id = "EHMIMessagingEndpoint-Herlev-VansEdi.01"
* identifier.value = "EHMIMessagingEndpoint-Herlev-VansEdi.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.IO-Herlev-Kommune-SOR.101000016005)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://herlev.dk/edi"
* payloadMimeType = #text/plain
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	
