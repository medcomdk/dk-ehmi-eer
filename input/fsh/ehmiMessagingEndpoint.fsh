Profile:      EHMIMessagingEndpoint
Parent:       MCSDEndpoint
Id:           ehmi.sor.endpoint.messaging
Title:        "EHMI Messaging Endpoint"
Description:  """
A profile on the mCSD Endpoint.

An Organization may be reachable through electronic Endpoint(s).
An Endpoint may be a FHIR server, an IHE web services actor, or some other
mechanism. If an Organization does not have an Endpoint, it may still be
reachable via an Endpoint at its parent Organization or an affiliated Organization.

Given that in FHIR R4 the .connnectionType is 1..1, each type of endpoint will be indicated with an independent Endpoint resource.
"""
* identifier 1..1 MS SU
* identifier.system = $EHMIAuditEventAgentWhoIdentifierTypes
* identifier.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
* identifier.value 1..1 MS SU
* connectionType from $EHMIEndpointConnectionTypeVS
* period 1..1 MS SU
* payloadType from $EHMIEndpointPayloadTypeVS
* payloadType 1..1 MS SU
* payloadMimeType 1..1 MS SU

Profile:      SOREndpointDocShare
Parent:       MCSDEndpointDocShare
Id:           medcom.sor.Endpoint.DocShare
Title:        "MedCom SOR DocShare Endpoint"
Description:  """ SOR """

