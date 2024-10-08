Instance: EHMI.envelope.sbdh.sbd.MessageDefinition
InstanceOf: MedcomMessagingMessageDefinitionEnvelope
Description: "An example of an MedcomMessagingMessageDefinition for sbdh.1.0."
* id = "EHMI.MessageDefinition.envelope.sbdh.1.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:envelope:xml:sbdh:1.0
//* identifier.system = $MedcomMessagingMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:envelope
* identifier.period.start = "2024-01-01"
* identifier.use = #official 
* identifier.value = "sbdh.1.0"
* version = "1.0"
//* name = "SBDHEnvelope"
* title = "SBDH Envelope 1.0"
* status = #active
* date = "2024-01-01"
* copyright = "Copyright © 2023 MedCom"
* contact[InteroperabilityConsultant].id = "InteroperabilityConsultant"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Ole Vilstrup Møller"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "ovi@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* description = "SBDH Envelope (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.valueCodeableConcept.text = "Alle eDelivery kommunikerende parter"
* purpose = "Denne standard anvendes, når man ønsker at sende en meddelelse over eDelivery netværket (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#empty-message
* responseRequired = #always

