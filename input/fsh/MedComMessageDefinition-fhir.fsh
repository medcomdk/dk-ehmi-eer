Profile: MedcomMessagingMessageDefinitionFhir
Parent: MedcomMessagingMessageDefinition
Description: "WILL BE MOVED TO MedComMessaging IG: An example profile of the MessageDefinition-fhir resource."
* identifier.system = $MedcomMessagingMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:fhir (exactly)
* identifier.type = $EHMIMedComMessageDefinitionType#FHIR
* useContext.code = $EHMIUsageContextCodeSystem#workflow (exactly)
* useContext.code.system = $EHMIUsageContextCodeSystem (exactly)

Profile: EerMsgDefHomeCareObservation
Parent: MedcomMessagingMessageDefinitionFhir
Description: "WILL BE MOVED TO MedComMessaging IG: An example profile of the MessageDefinition-fhir resource."
* identifier.system = $MedcomMessagingMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:fhir (exactly)
* identifier.type = $EHMIMedComMessageDefinitionType#FHIR
* useContext.code = $EHMIUsageContextCodeSystem#workflow (exactly)
* useContext.code.system = $EHMIUsageContextCodeSystem (exactly)
