Profile:      EerSorEndpoint
Parent:       MCSDEndpoint
Id:           eer.dk.sor.endpoint
Title:        "EER SOR Endpoint"
Description:  """
A profile on the mCSD Endpoint.

An Organization may be reachable through electronic Endpoint(s).
An Endpoint may be an eDelivery receiver or a vans receiver (or in the future a FHIR server, an IHE web services actor, or some other
mechanism).
"""
* identifier 1..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    GLN-ID 1..1 MS SU
* identifier[GLN-ID] only GLNIdentifier
  * ^short = "[DA] GLN-id"

* managingOrganization only Reference(EerSOROrganization)
* connectionType from $EerEndpointConnectionTypeVS
* period 1..1 MS SU
* payloadType from $EhmiMessageDefinitionUriVS
* payloadType 1..* MS SU
* payloadMimeType 1..* MS SU
* extension contains eer-dk-msh-system-extension named msh-system 0..* MS 
* extension contains eer-dk-ap-system-extension named ap-system 0..* MS 