Profile: EerMessageDefinitionFhir
Parent: EerMessageDefinition
Description: "An example profile of the MessageDefinition-fhir resource."
* identifier.system = $EerMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:fhir (exactly)
* identifier.type = $EerMedComMessageDefinitionType#FHIR
* useContext.code = $EerUsageContextCodeSystem#workflow // (exactly)
* useContext.code.system = $EerUsageContextCodeSystem (exactly)

Profile: EerMsgDefHomeCareObservation
Parent: EerMessageDefinitionFhir
Description: "An example profile of the MessageDefinition-fhir resource."
* identifier.system = $EerMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:fhir (exactly)
* identifier.type = $EerMedComMessageDefinitionType#FHIR
* useContext.code = $EerUsageContextCodeSystem#workflow // (exactly)
* useContext.code.system = $EerUsageContextCodeSystem (exactly)
