Profile: EHMIMessageDefinitionEnvelope
Parent: EHMIMessageDefinition
Description: "An example profile of the MessageDefinition-envelope resource."
//* id = 
* identifier.system = $EHMIMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:envelope (exactly)
* identifier.type = $EHMIMedComMessageDefinitionType#ENVELOPE (exactly)
* useContext.code = #workflow (exactly)
* useContext.code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type" (exactly)
* eventCoding = $MessageEvents#empty-message (exactly)

