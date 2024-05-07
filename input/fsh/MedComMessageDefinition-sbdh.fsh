Profile: MedcomMessagingMessageDefinitionEnvelope
Parent: MedcomMessagingMessageDefinition
Description: "WILL BE MOVED TO MedComMessaging IG: An example profile of the MessageDefinition-envelope resource."
//* id = 
* identifier.system = $MedcomMessagingMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:envelope (exactly)
* identifier.type = $EHMIMedComMessageDefinitionType#ENVELOPE (exactly)
* useContext.code = $EHMIUsageContextCodeSystem#workflow (exactly)
* useContext.code.system = $EHMIUsageContextCodeSystem (exactly)
* eventCoding = $MessageEvents#empty-message (exactly)

