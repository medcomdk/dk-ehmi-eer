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
    GLN-ID 1..1 and
    SMP-Participant-Id 0..1 and
    SMP-Receiver-Service-Id 0..1

* identifier[GLN-ID] only GLNIdentifier
  * ^short = "GLN is what senders will use to send supported messages (according to payloadTypes) to this endpoint"

* identifier[SMP-Participant-Id] only EDeliveryIdentifier
  * type = #smp-participant-id
  * ^short = "The participant ID of the endpoint in the SMP/PORS API. This is used to create the participant in the SMP and associate the receiver service with it"
* identifier[SMP-Receiver-Service-Id] only EDeliveryIdentifier
  * type = #smp-receiver-service-id
  * ^short = "The receiver service ID of the endpoint in the SMP/PORS API. This is used to create the receiver service in the SMP and associate it with the participant"

* managingOrganization only Reference(EerMessagingOrganization)
  * ^short = "The responsible organization that will be contacted in case of issues with the messages sent to this endpoint."

* connectionType from $EerEndpointConnectionTypeVS // TODO: Spørg Ole ind til denne... Hvad skal den bruges til og vi skal nok som minimum undgå duplikationer af den extensible FHIR EndpointConnectionType 
  * ^short = "The connection type for this endpoint. For messaging endpoints during the productionpilot this is always 'EerMessagingEdelivery'"

* period 1..1
  * ^short = "The period in which the 'status' of the endpoint is valid"

* payloadType 1..*
  * ^short = "The type of messages that this endpoint can receive. Only receive, not send."
* payloadType from $EhmiMessageDefinitionUriVS

* payloadMimeType 1..*

* extension contains EerMSHSystemExtension named msh-system 0..*
* extension contains EerAPSystemExtension named ap-system 0..1

* language 0..0
* address
  * ^short = "The address of the endpoint is inside the ap-system extension"