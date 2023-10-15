Profile:      EHMIMessagingEndpoint
Parent:       MCSDEndpoint
Id:           medcom.ehmi.dk.mcsd.messaging
Title:        "EHMI Messaging Endpoint"
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
* payloadType from ehmi-payload-type-valueset
* payloadType 1..1 MS SU
* payloadMimeType 1..1 MS SU

Profile:      EHMIMessagingEdeliveryEndpoint
Parent:       EHMIMessagingEndpoint
Id:           medcom.ehmi.dk.mcsd.messaging.edelivery
Title:        "EHMI eDelivery Messaging Endpoint"
Description:  "EHMI eDelivery Messaging Endpoint"
* connectionType = $EHMIEndpointConnectionType#eDeliveryMessaging (exactly)

Profile:      EHMIMessagingEdeliveryFhirEndpoint
Parent:       EHMIMessagingEdeliveryEndpoint
Id:           medcom.ehmi.dk.mcsd.messaging.edelivery.fhir
Title:        "EHMI eDelivery FHIR Messaging Endpoint"
Description:  "EHMI eDelivery FHIR Messaging Endpoint"
* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:edelivery:messaging:fhir (exactly)

Profile:      EHMIMessagingEdeliveryEdiEndpoint
Parent:       EHMIMessagingEdeliveryEndpoint
Id:           medcom.ehmi.dk.mcsd.messaging.edelivery.edi
Title:        "EHMI eDelivery EDI Messaging Endpoint"
Description:  "EHMI eDelivery EDI Messaging Endpoint"
* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:edelivery:messaging:edi

Profile:      EHMIMessagingEdeliveryOioxmlEndpoint
Parent:       EHMIMessagingEdeliveryEndpoint
Id:           medcom.ehmi.dk.mcsd.messaging.edelivery.oioxml
Title:        "EHMI eDelivery Oioxml Messaging Endpoint"
Description:  "EHMI eDelivery Oioxml Messaging Endpoint"
* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:edelivery:messaging:oioxml

Profile:      EHMIMessagingVansEndpoint
Parent:       EHMIMessagingEndpoint
Id:           medcom.ehmi.dk.mcsd.messaging.vans
Title:        "VANS Messaging Endpoint"
Description:  "VANS Messaging Endpoint"
* connectionType = $EHMIEndpointConnectionType#vansMessaging

Profile:      EHMIMessagingVansFhirEndpoint
Parent:       EHMIMessagingVansEndpoint
Id:           medcom.ehmi.dk.mcsd.messaging.vans.fhir
Title:        "EHMI VANS FHIR Messaging Endpoint"
Description:  "EHMI VANS FHIR Messaging Endpoint"
* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:edelivery:messaging:fhir

Profile:      EHMIMessagingVansEdiEndpoint
Parent:       EHMIMessagingVansEndpoint
Id:           medcom.ehmi.dk.mcsd.messaging.vans.edi
Title:        "EHMI VANS EDI Messaging Endpoint"
Description:  "EHMI VANS EDI Messaging Endpoint"
* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:edelivery:messaging:edi

Profile:      EHMIMessagingVansOioxmlEndpoint
Parent:       EHMIMessagingVansEndpoint
Id:           medcom.ehmi.dk.mcsd.messaging.vans.oioxml
Title:        "EHMI VANS Oioxml Messaging Endpoint"
Description:  "EHMI VANS Oioxml Messaging Endpoint"
* payloadType = $EHMIEndpointPayloadType#urn:dk:medcom:vans:messaging:oioxml

/*
Profile:      SOREndpointDocShare
Parent:       MCSDEndpointDocShare
Id:           medcom.ehmi.dk.mcsd.DocShare
Title:        "MedCom SOR DocShare Endpoint"
Description:  """ SOR """

*/