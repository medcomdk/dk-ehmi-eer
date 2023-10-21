Instance: EHMI.envelope.sbdh.sbdhack.MessageDefinition
InstanceOf: EHMIMessageDefinition_envelope
Description: "An example of an EHMIMessageDefinition for SBDH."
* id = "EHMI.MessageDefinition.envelope.sbdhach.1.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:envelope:xml:sbdh_ack:1.0
* identifier.system = $EHMIMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:envelope
* identifier.period.start = "2012-07-01"
* identifier.type = $EHMIMedComMessageDefinitionType#ENVELOPE
* identifier.use = #official 
* identifier.value = "sbdhack.1.0"
* version = "1.0"
* name = "SBDH-Ack"
* title = "SBDH ACK"
* status = #active
* date = "2020-06-26"
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

