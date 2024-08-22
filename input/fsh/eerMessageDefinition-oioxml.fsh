Profile: EerMessageDefinitionOioxml
Parent: EerMessageDefinition
Description: "An example profile of the MessageDefinition-oioxml resource."
* identifier.system = $EerMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:oioxml (exactly)
* identifier.type = $EerMedComMessageDefinitionType#OIOXML (exactly)
* useContext.code = $EerUsageContextCodeSystem#workflow (exactly)
* useContext.code.system = $EerUsageContextCodeSystem (exactly)
* responseRequired = #on-error

