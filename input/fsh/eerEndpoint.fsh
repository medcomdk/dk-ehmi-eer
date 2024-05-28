Profile:      EerEndpoint
Parent:       MCSDEndpoint
Id:           dk.eer.endpoint
Title:        "EER Endpoint - General EHMI endpoint"
Description:  """
A profile on the mCSD Endpoint.
An Organization may be reachable through electronic Endpoint(s).
"""
* identifier 1..1 MS SU
* identifier.system = $EHMIAuditEventAgentWhoIdentifierTypes
//* identifier.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.code = #official
* identifier.value 1..1 MS SU
* connectionType from ehmi-connection-type-valueset
* period 1..1 MS SU
* payloadType from ehmi-medcom-message-definition-uri-valueset
* payloadType 1..* MS SU
* payloadMimeType 1..1 MS SU
//* extension contains eer-dk-core-system-extension named system 0..* MS 
//* extension contains eer-dk-core-network-supply-system-extension named networkSupplySystem 0..* MS 
