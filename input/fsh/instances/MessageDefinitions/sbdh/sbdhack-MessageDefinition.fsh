Instance: EHMI.envelope.sbdh.sbdhacknowledgement.MessageDefinition
InstanceOf: EHMIMessageDefinitionEnvelope
Description: "An example of an EHMIMessageDefinition for SBDH."
* id = "EHMI.MessageDefinition.envelope.sbdhacknowledgement.1.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:envelope:xml:sbdhacknowledgement:1.0
* identifier.system = $EHMIMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:envelope
* identifier.period.start = "2024-01-01"
* identifier.type = $EHMIMedComMessageDefinitionType#ENVELOPE
* identifier.use = #official 
* identifier.value = "sbdhacknowledgement.1.0"
* version = "1.0"
* name = "SBDHacknowledgement"
* title = "SBDHacknowledgement"
* status = #active
* date = "2024-01-01"
* copyright = "Copyright © 2023 MedCom"
//* publisher = "MedCom"
* contact[InteroperabilityConsultant].id = "InteroperabilityConsultant"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Ole Vilstrup Møller"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "ovi@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* description = "SBDH Envelope (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.code = #workflow
* useContext.valueCodeableConcept.text = "Alle eDelivery kommunikerende parter"
* purpose = "Denne standard anvendes, når man ønsker at kvittere på en sendt SBDH-envelope over eDelivery netværket (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#empty-message

