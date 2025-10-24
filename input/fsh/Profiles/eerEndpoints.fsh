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
* identifier.system = "http://www.gs1.org/gln" //$EerAuditEventAgentWhoIdentifierTypes
* identifier.type = $EerAuditEventAgentWhoIdentifierTypes#GLN
* identifier.value 1..1 MS SU
* managingOrganization only Reference(EerMessagingOrganization)
* connectionType from $EerEndpointConnectionTypeVS
* period 1..1 MS SU
* payloadType from $EhmiMessageDefinitionUriVS
* payloadType 1..* MS SU
* payloadMimeType 1..* MS SU
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