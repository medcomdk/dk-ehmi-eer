Profile: EHMIMessageDefinitionFhir
Parent: EHMIMessageDefinition
Description: "An example profile of the MessageDefinition-fhir resource."
* identifier.system = $EHMIMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:fhir (exactly)
* identifier.type = $EHMIMedComMessageDefinitionType#FHIR
* useContext.code = $$EHMIUsageContextCodeSystem#workflow (exactly)
* useContext.code.system = $$EHMIUsageContextCodeSystem (exactly)
