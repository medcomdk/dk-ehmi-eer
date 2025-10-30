Profile:      EerEndpointMessaging
Parent:       MCSDEndpoint
Id:           eer.dk.endpoint.messaging
Title:        "EER Endpoint - General for Messaging"
Description:  """
A profile on the EER Endpoint.

An Organization may be reachable through electronic Endpoint(s).
An Endpoint may be a eDelivery receiver or a vans receiver (or in the future a FHIR server, an IHE web services actor, or some other
mechanism).
"""
* identifier 1..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    GLN-ID 1..1 MS SU
// NOTE: If this is approved, then we should make the same change to EDS AuditEvent.agent.extension.GLNId.
// This would also simplify EDS a bit as we can delete the eds-otherId
// Possibly also delete the valueset and codesystem from terminology. Reducing the amount of complexity in there as well.
* identifier[GLN-ID] only GLNIdentifier
  * ^short = "[DA] GLN-id"

* managingOrganization only Reference(EerMessagingOrganization)
* connectionType from ExtendedEerEndpointConnectionTypeVS
* period 1..1 MS SU
* payloadType from $EhmiMessageDefinitionUriVS
* payloadType 1..* MS SU
* payloadMimeType 1..* MS SU
* extension contains eer-dk-msh-system-extension named msh-system 0..* MS 
* extension contains eer-dk-network-supply-system-extension named networkSupplySystem 0..* MS 

CodeSystem: ExtendedEerEndpointConnectionTypeCS
Id: extended-eer-endpoint-connection-type-cs
Title: "Just for demo purposes. Should be placed in terminology once PR is approved"
Description: "Just for demo purposes. Should be placed in terminology once PR is approved"
* #eerMessagingEdeliveryFhir "EHMI messaging via eDelivery FHIR"

// NOTE: This is just for demo purposes. The EerEndpointConnectionTypeCS will be extended instead
ValueSet: ExtendedEerEndpointConnectionTypeVS
Id: extended-eer-endpoint-connection-type-valueset
Title: "Extended EER Endpoint Connection Type ValueSet"
Description: "Extended EER Endpoint Connection Type ValueSet including EerMessagingEdelivery"
* include codes from system eer-endpoint-connection-type
* include codes from system extended-eer-endpoint-connection-type-cs