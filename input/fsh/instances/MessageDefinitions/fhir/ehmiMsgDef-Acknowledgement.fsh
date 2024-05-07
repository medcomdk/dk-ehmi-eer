Instance: Eer.fhir.MessageDefinition.Acknowledgement:2.0
InstanceOf: MedcomMessagingMessageDefinitionFhir
Description: "An example of an MedcomMessagingMessageDefinition for Acknowledgement:2.0"
* id = "Eer.fhir.MessageDefinition.Acknowledgement.2.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
* identifier.period.start = "2021-03-23"
//* identifier.period.end = "2023-01-05"
* identifier.use = #official
* identifier.value = "Acknowledgement.2.0"
* version = "2.0"
//* name = "Acknowledgement:2.0"
* title = "Acknowledgement 2.0"
* replaces.value = "Eer.fhir.MessageDefinition.Acknowledgement:1.0"
* status = #active
* date = "2022-10-05"
* copyright = "Copyright © 2022 MedCom"
//* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Thea Mentz Sørensen"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* description = "DK: Kvitteringsmeddelelse (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.valueCodeableConcept.text = "DK: Alle som kvittering på en fhir meddelelse (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende kvittering på en fhir meddelelse  (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#acknowledgement-message
* responseRequired = #never

Instance: Eer.fhir.MessageDefinition.Acknowledgement:1.0
InstanceOf: MedcomMessagingMessageDefinitionFhir
Description: "An example of an MedcomMessagingMessageDefinition for Acknowledgement:1.0"
* id = "Eer.fhir.MessageDefinition.Acknowledgement.1.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:1.0
* identifier.period.start = "2021-03-23"
* identifier.period.end = "2022-10-04"
* identifier.use = #old
* identifier.value = "Acknowledgement.1.0"
* version = "1.0"
//* name = "Acknowledgement:1.0"
* title = "Acknowledgement 1.0"
* status = #retired
* date = "2021-03-23"
* copyright = "Copyright © 2021 MedCom"
//* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Thea Mentz Sørensen"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* description = "DK: Kvitteringsmeddelelse (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.valueCodeableConcept.text = "DK: Alle som kvittering på en fhir meddelelse (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende kvittering på en fhir meddelelse  (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* copyright = "Copyright © 2022 MedCom"
* eventCoding = $MessageEvents#acknowledgement-message
* responseRequired = #never

