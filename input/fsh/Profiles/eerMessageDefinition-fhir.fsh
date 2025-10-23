Profile: EerMessageDefinitionFhir
Parent: EerMessageDefinition
Title: "EER MessageDefinition for FHIR Messages"
Description: "A profile of the MessageDefinition-fhir resource."
* identifier.system = $EerMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:fhir
* identifier.type = $EerMedComMessageDefinitionType#FHIR
* useContext.code = $EerUsageContextCodeSystem#workflow

Profile: EerMessageDefinitionHomeCareObservation
Parent: EerMessageDefinitionFhir
Title: "EER MessageDefinition for HomeCareObservation"
Description: "A profile of the MessageDefinition-fhir resource."
* identifier.system = $EerMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:fhir
* identifier.type = $EerMedComMessageDefinitionType#FHIR
* useContext.code = $EerUsageContextCodeSystem#workflow
