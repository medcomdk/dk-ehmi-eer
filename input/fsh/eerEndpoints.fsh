Profile:      EerEndpoint
Parent:       MCSDEndpoint
Id:           eer.dk.endpoint
Title:        "EER Endpoint - General Endpoint"
Description:  """
A profile on the mCSD Endpoint.

An Organization may be reachable through electronic Endpoint(s).
An Endpoint may be a eDelivery receiver or a vans receiver (or in the future a FHIR server, an IHE web services actor, or some other
mechanism).
"""
* identifier 1..1 MS SU
* identifier.system = $EerAuditEventAgentWhoIdentifierTypes
* identifier.type from $EerAuditEventAgentWhoIdentifierTypesVS
* identifier.value 1..1 MS SU
* connectionType from $EerEndpointConnectionTypeVS
* period 1..1 MS SU

Profile:      EerEndpointMessaging
Parent:       EerEndpoint
Id:           eer.dk.endpoint.messaging
Title:        "EER Endpoint - General for Messaging"
Description:  """
A profile on the EER Endpoint.

An Organization may be reachable through electronic Endpoint(s).
An Endpoint may be a eDelivery receiver or a vans receiver (or in the future a FHIR server, an IHE web services actor, or some other
mechanism).
"""
* identifier 1..1 MS SU
* identifier.system = $EerAuditEventAgentWhoIdentifierTypes
* identifier.type = $EerAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.code = #official
* identifier.value 1..1 MS SU
* managingOrganization only Reference(EerMessagingOrganization)
* connectionType from $EerEndpointConnectionTypeVS
* period 1..1 MS SU
* payloadType from $EhmiMessageDefinitionUriVS
* payloadType 1..* MS SU
* payloadMimeType 1..* MS SU
//* extension contains eer-dk-eua-system-extension named eua-system 0..* MS 
* extension contains eer-dk-msh-system-extension named msh-system 0..* MS 
* extension contains eer-dk-network-supply-system-extension named networkSupplySystem 0..* MS 

Profile:      EerEndpointMessagingEdelivery
Parent:       EerEndpointMessaging
Id:           eer.dk.messaging.edelivery
Title:        "EER Endpoint Messaging - eDelivery"
Description:  "EER Endpoint Messaging - eDelivery"
* connectionType = $EerEndpointConnectionTypeCS#EerMessagingEdelivery (exactly)

Profile:      EerEndpointMessagingEdeliveryFhir
Parent:       EerEndpointMessagingEdelivery
Id:           eer.dk.messaging.edelivery.fhir
Title:        "EER Endpoint Messaging eDelivery - FHIR"
Description:  "EER Endpoint Messaging eDelivery - FHIR"
//* payloadType = $EerEndpointPayloadType#urn:dk:medcom:prod:messaging:fhir (exactly)
//* payloadType = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0

/*
Profile:      EereDeliveryMessagingEdiEndpoint
Parent:       EerEndpointMessagingEdelivery
Id:           eer.dk.messaging.edelivery.edi
Title:        "EER Endpoint eDelivery EDI Messaging"
Description:  "EER Endpoint eDelivery EDI Messaging"
//* payloadType = $EerEndpointPayloadType#urn:dk:medcom:prod:messaging:edi (exactly)
//* payloadType.coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[0].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[+].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	
//* payloadType[+].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	
*/

/*
Profile:      EereDeliveryMessagingOioxmlEndpoint
Parent:       EerEndpointMessagingEdelivery
Id:           eer.dk.messaging.edelivery.oioxml
Title:        "EER Endpoint eDelivery Oioxml Messaging"
Description:  "EER Endpoint eDelivery Oioxml Messaging"
//* payloadType = $EerEndpointPayloadType#urn:dk:medcom:prod:messaging:oioxml (exactly)
//* payloadType.coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[0].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[+].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
//* payloadType[+].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
*/

/*
Profile:      EerMessagingVansEndpoint
Parent:       EerEndpointMessaging
Id:           eer.dk.messaging.vans
Title:        "EER Endpoint VANS Messaging"
Description:  "EER Endpoint VANS Messaging"
* connectionType = $EerEndpointConnectionType#vansMessaging (exactly)
*/

/*
Profile:      EerMessagingVansFhirEndpoint
Parent:       EerMessagingVansEndpoint
Id:           eer.dk.messaging.vans.fhir
Title:        "EER Endpoint VANS FHIR Messaging"
Description:  "EER Endpoint VANS FHIR Messaging"
//* payloadType = $EerEndpointPayloadType#urn:dk:medcom:prod:messaging:fhir (exactly)
//* payloadType = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
*/

/*
Profile:      EerMessagingVansEdiEndpoint
Parent:       EerMessagingVansEndpoint
Id:           eer.dk.messaging.vans.edi
Title:        "EER Endpoint VANS EDI Messaging"
Description:  "EER Endpoint VANS EDI Messaging"
//* payloadType = $EerEndpointPayloadType#urn:dk:medcom:prod:messaging:edi (exactly)
//* payloadType.coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[0].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[+].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	
//* payloadType[+].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	
*/

/*
Profile:      EerMessagingVansOioxmlEndpoint
Parent:       EerMessagingVansEndpoint
Id:           eer.dk.messaging.vans.oioxml
Title:        "EER Endpoint VANS Oioxml Messaging"
Description:  "EER Endpoint VANS Oioxml Messaging"
//* payloadType = $EerEndpointPayloadType#urn:dk:medcom:prod:messaging:oioxml (exactly)
//* payloadType.coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[0].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[+].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
//* payloadType[+].coding.code = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
*/

/*
Profile:      SOREndpointDocShare
Parent:       MCSDEndpointDocShare
Id:           medcom.ehmi.dk.mcsd.DocShare
Title:        "MedCom SOR DocShare Endpoint"
Description:  """ SOR """

*/