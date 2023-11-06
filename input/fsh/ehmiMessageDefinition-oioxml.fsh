Profile: EHMIMessageDefinitionOioxml
Parent: EHMIMessageDefinition
Description: "An example profile of the MessageDefinition-oioxml resource."
* identifier.system = $EHMIMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:oioxml (exactly)
* identifier.type = $EHMIMedComMessageDefinitionType#OIOXML (exactly)
* useContext.code = $EHMIUsageContextCodeSystem#workflow (exactly)
* useContext.code.system = $EHMIUsageContextCodeSystem (exactly)
* responseRequired = #on-error

