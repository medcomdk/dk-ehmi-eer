Profile: EerMessageDefinitionFhir
Parent: EerMessageDefinition
Description: "An example profile of the MessageDefinition-fhir resource."
* identifier.system = $EerMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:fhir (exactly)
* identifier.type = $EHMIMedComMessageDefinitionType#FHIR
* useContext.code = $EHMIUsageContextCodeSystem#workflow (exactly)
* useContext.code.system = $EHMIUsageContextCodeSystem (exactly)

Profile: EerMsgDefHomeCareObservation
Parent: EerMessageDefinitionFhir
Description: "An example profile of the MessageDefinition-fhir resource."
* identifier.system = $EerMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:fhir (exactly)
* identifier.type = $EHMIMedComMessageDefinitionType#FHIR
* useContext.code = $EHMIUsageContextCodeSystem#workflow (exactly)
* useContext.code.system = $EHMIUsageContextCodeSystem (exactly)
