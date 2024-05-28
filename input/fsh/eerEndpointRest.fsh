Profile:      EerEndpointRest
Parent:       EerEndpoint
Id:           dk.eer.endpoint.rest
Title:        "EER Endpoint - General for REST calls"
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
* connectionType = #hl7-fhir-rest
* period 1..1 MS SU
* payloadType from ehmi-medcom-message-definition-uri-valueset
* payloadType 1..* MS SU
* payloadMimeType 1..1 MS SU
//* extension contains eer-dk-core-system-extension named system 0..* MS 
//* extension contains eer-dk-core-network-supply-system-extension named networkSupplySystem 0..* MS 

Profile:      EerEndpointRestEds
Parent:       EerEndpointRest
Id:           dk.eer.endpoint.rest.eds
Title:        "EER Endpoint EDS"
Description:  "EER Endpoint EDS"

Profile:      EerEndpointRestEer
Parent:       EerEndpointRest
Id:           dk.eer.endpoint.rest.eer
Title:        "EER Endpoint EER"
Description:  "EER Endpoint EER"

Profile:      EerEndpointRestEas
Parent:       EerEndpointRest
Id:           dk.eer.endpoint.rest.eas
Title:        "EER Endpoint EAS"
Description:  "EER Endpoint EAS"

