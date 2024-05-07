Profile:      EerMessagingEndpoint
Parent:       MCSDEndpoint
Id:           dk.eer.endpoint.messaging
Title:        "EER Endpoint - General for Messaging"
Description:  """
A profile on the mCSD Endpoint.

An Organization may be reachable through electronic Endpoint(s).
An Endpoint may be a eDelivery receiver or a vans receiver (or in the future a FHIR server, an IHE web services actor, or some other
mechanism).
"""
* identifier 1..1 MS SU
* identifier.system = $EHMIAuditEventAgentWhoIdentifierTypes
* identifier.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.code = #official
* identifier.value 1..1 MS SU
* connectionType from ehmi-connection-type-valueset
* period 1..1 MS SU
* payloadType from ehmi-medcom-message-definition-uri-valueset
* payloadType 1..* MS SU
* payloadMimeType 1..1 MS SU
* extension contains eer-dk-core-system-extension named system 0..* MS 
* extension contains eer-dk-core-network-supply-system-extension named networkSupplySystem 0..* MS 

Profile:      EerMessagingEndpointeDelivery
Parent:       EerMessagingEndpoint
Id:           dk.eer.endpoint.messaging.edelivery
Title:        "EER Endpoint eDelivery Messaging"
Description:  "EER Endpoint eDelivery Messaging"
* connectionType = $EHMIEndpointConnectionType#EHMIeDeliveryMessaging (exactly)

Profile:      EerMessagingEndpointeDeliveryFhir
Parent:       EerMessagingEndpointeDelivery
Id:           dk.eer.endpoint.messaging.edelivery.fhir
Title:        "EER Endpoint eDelivery FHIR Messaging"
Description:  "EER Endpoint eDelivery FHIR Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:fhir (exactly)
//* payloadType = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0

/*
Profile:      EHMIeDeliveryMessagingEdiEndpoint
Parent:       EerMessagingEndpointeDelivery
Id:           dk.eer.endpoint.messaging.edelivery.edi
Title:        "EER Endpoint eDelivery EDI Messaging"
Description:  "EER Endpoint eDelivery EDI Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:edi (exactly)
//* payloadType.coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[0].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	
*/

/*
Profile:      EHMIeDeliveryMessagingOioxmlEndpoint
Parent:       EerMessagingEndpointeDelivery
Id:           dk.eer.endpoint.messaging.edelivery.oioxml
Title:        "EER Endpoint eDelivery Oioxml Messaging"
Description:  "EER Endpoint eDelivery Oioxml Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:oioxml (exactly)
//* payloadType.coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[0].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
*/

/*
Profile:      EHMIMessagingVansEndpoint
Parent:       EerMessagingEndpoint
Id:           dk.eer.endpoint.messaging.vans
Title:        "EER Endpoint VANS Messaging"
Description:  "EER Endpoint VANS Messaging"
* connectionType = $EHMIEndpointConnectionType#vansMessaging (exactly)
*/

/*
Profile:      EHMIMessagingVansFhirEndpoint
Parent:       EHMIMessagingVansEndpoint
Id:           dk.eer.endpoint.messaging.vans.fhir
Title:        "EER Endpoint VANS FHIR Messaging"
Description:  "EER Endpoint VANS FHIR Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:fhir (exactly)
//* payloadType = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
*/

/*
Profile:      EHMIMessagingVansEdiEndpoint
Parent:       EHMIMessagingVansEndpoint
Id:           dk.eer.endpoint.messaging.vans.edi
Title:        "EER Endpoint VANS EDI Messaging"
Description:  "EER Endpoint VANS EDI Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:edi (exactly)
//* payloadType.coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[0].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	
*/

/*
Profile:      EHMIMessagingVansOioxmlEndpoint
Parent:       EHMIMessagingVansEndpoint
Id:           dk.eer.endpoint.messaging.vans.oioxml
Title:        "EER Endpoint VANS Oioxml Messaging"
Description:  "EER Endpoint VANS Oioxml Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:oioxml (exactly)
//* payloadType.coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[0].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
*/

/*
Profile:      SOREndpointDocShare
Parent:       MCSDEndpointDocShare
Id:           medcom.ehmi.dk.mcsd.DocShare
Title:        "MedCom SOR DocShare Endpoint"
Description:  """ SOR """

*/