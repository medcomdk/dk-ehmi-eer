Profile:      EHMIMessagingEndpoint
Parent:       MCSDEndpoint
Id:           ehmi.dk.messaging
Title:        "EHMI Endpoint - General for Messaging"
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

Profile:      EHMIMessagingEdeliveryEndpoint
Parent:       EHMIMessagingEndpoint
Id:           ehmi.dk.messaging.edelivery
Title:        "EHMI Endpoint eDelivery Messaging"
Description:  "EHMI Endpoint eDelivery Messaging"
* connectionType = $EHMIEndpointConnectionType#eDeliveryMessaging (exactly)

Profile:      EHMIMessagingEdeliveryFhirEndpoint
Parent:       EHMIMessagingEdeliveryEndpoint
Id:           ehmi.dk.messaging.edelivery.fhir
Title:        "EHMI Endpoint eDelivery FHIR Messaging"
Description:  "EHMI Endpoint eDelivery FHIR Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:fhir (exactly)
//* payloadType = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0

Profile:      EHMIMessagingEdeliveryEdiEndpoint
Parent:       EHMIMessagingEdeliveryEndpoint
Id:           ehmi.dk.messaging.edelivery.edi
Title:        "EHMI Endpoint eDelivery EDI Messaging"
Description:  "EHMI Endpoint eDelivery EDI Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:edi (exactly)
//* payloadType.coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[0].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	

Profile:      EHMIMessagingEdeliveryOioxmlEndpoint
Parent:       EHMIMessagingEdeliveryEndpoint
Id:           ehmi.dk.messaging.edelivery.oioxml
Title:        "EHMI Endpoint eDelivery Oioxml Messaging"
Description:  "EHMI Endpoint eDelivery Oioxml Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:oioxml (exactly)
//* payloadType.coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[0].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"

Profile:      EHMIMessagingVansEndpoint
Parent:       EHMIMessagingEndpoint
Id:           ehmi.dk.messaging.vans
Title:        "EHMI Endpoint VANS Messaging"
Description:  "EHMI Endpoint VANS Messaging"
* connectionType = $EHMIEndpointConnectionType#vansMessaging (exactly)

Profile:      EHMIMessagingVansFhirEndpoint
Parent:       EHMIMessagingVansEndpoint
Id:           ehmi.dk.messaging.vans.fhir
Title:        "EHMI Endpoint VANS FHIR Messaging"
Description:  "EHMI Endpoint VANS FHIR Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:fhir (exactly)
//* payloadType = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0

Profile:      EHMIMessagingVansEdiEndpoint
Parent:       EHMIMessagingVansEndpoint
Id:           ehmi.dk.messaging.vans.edi
Title:        "EHMI Endpoint VANS EDI Messaging"
Description:  "EHMI Endpoint VANS EDI Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:edi (exactly)
//* payloadType.coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[0].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl01:c0130q	
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl02:c0230q	
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:contrl:ctl03:c0330q	

Profile:      EHMIMessagingVansOioxmlEndpoint
Parent:       EHMIMessagingVansEndpoint
Id:           ehmi.dk.messaging.vans.oioxml
Title:        "EHMI Endpoint VANS Oioxml Messaging"
Description:  "EHMI Endpoint VANS Oioxml Messaging"
//* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:prod:messaging:oioxml (exactly)
//* payloadType.coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[0].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
//* payloadType[+].coding.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"

/*
Profile:      SOREndpointDocShare
Parent:       MCSDEndpointDocShare
Id:           medcom.ehmi.dk.mcsd.DocShare
Title:        "MedCom SOR DocShare Endpoint"
Description:  """ SOR """

*/