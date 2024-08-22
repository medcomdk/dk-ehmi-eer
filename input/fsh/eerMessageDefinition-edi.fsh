Profile: EerMessageDefinitionEdi
Parent: EerMessageDefinition
Description: "An example profile of the MessageDefinition-edi resource."
//* id = 
* identifier.system = $EerMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:edifact
* identifier.type = $EerMedComMessageDefinitionType#EDIFACT
* useContext.code.system = $EerUsageContextCodeSystem (exactly)
* responseRequired = #on-error

