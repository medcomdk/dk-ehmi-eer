Instance: EHMIMessagingEndpoint-eDeliveryEdi.01
InstanceOf: EHMIeDeliveryMessagingEdiEndpoint
Description: "An example of an EHMIeDeliveryMessagingEdiEndpoint."
* id = "EHMIMessagingEndpoint-eDeliveryEdi.01"
* identifier.value = "EHMIMessagingEndpoint-eDeliveryEdi.01"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI.01.1)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/edi"
* payloadMimeType = #text/plain
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	
