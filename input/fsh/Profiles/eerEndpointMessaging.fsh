Profile:      EerEndpointMessaging
Parent:       MCSDEndpoint
Id:           eer.dk.endpoint.messaging
Title:        "EER Endpoint - General for Messaging"
Description:  "An endpoint for healthcare systems to receive messages in the EHMI eDelivery network"
* identifier 1..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    GLN-ID 1..1

* identifier[GLN-ID] only GLNIdentifier
  * ^short = "GLN is what senders will use to send supported messages (according to payloadTypes) to this endpoint"

* managingOrganization only Reference(EerMessagingOrganization)
  * ^short = "The responsible organization that will be contacted in case of issues with the messages sent to this endpoint."

* connectionType from $EerEndpointConnectionTypeVS
  * ^short = "The connection type for this endpoint. For messaging endpoints during the productionpilot this is always 'EerMessagingEdelivery'"

* period 1..1
  * ^short = "The period in which the 'status' of the endpoint is valid"

* payloadType 1..*
  * ^short = "The type of messages that this endpoint can receive. Only receive, not send."
* payloadType from $EhmiMessageDefinitionUriVS

* payloadMimeType 1..*

* extension contains EerMSHSystemExtension named msh-system 0..*
* extension contains EerAPSystemExtension named ap-system 0..1
* extension contains
  SmpParticipantIdExtension named smpParticipantId 0..1 MS and
  SmpReceiverServiceIdExtension named smpReceiverServiceId 0..1 MS

* address
  * ^short = "The address of the endpoint is inside the ap-system extension"