Profile: EerMessageDefinitionEnvelope
Parent: EerMessageDefinition
Description: "An example profile of the MessageDefinition-envelope resource."
//* id = 
* identifier.system = $EerMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:envelope // (exactly)
* identifier.type = $EerMedComMessageDefinitionType#ENVELOPE // (exactly)
* useContext.code = $EerUsageContextCodeSystem#workflow // (exactly)
//* useContext.code.system = $EerUsageContextCodeSystem // (exactly)
* eventCoding = $MessageEvents#empty-message // (exactly)

