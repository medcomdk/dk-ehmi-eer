Profile: EHMIMessageDefinitionEnvelope
Parent: EHMIMessageDefinition
Description: "An example profile of the MessageDefinition-envelope resource."
//* id = 
* identifier.system = $EHMIMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:envelope (exactly)
* identifier.type = $EHMIMedComMessageDefinitionType#ENVELOPE (exactly)
* useContext.code = $$EHMIUsageContextCodeSystem#workflow (exactly)
* useContext.code.system = $$EHMIUsageContextCodeSystem (exactly)
* eventCoding = $MessageEvents#empty-message (exactly)

