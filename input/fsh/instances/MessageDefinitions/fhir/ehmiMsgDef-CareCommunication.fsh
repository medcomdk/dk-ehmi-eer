/*
Instance: Eer.fhir.MessageDefinition.CareCommunication:3.0
InstanceOf: MedcomMessagingMessageDefinitionFhir
Description: "An example of an MedcomMessagingMessageDefinition for CareCommunication:3.0"
* id = "Eer.fhir.MessageDefinition.CareCommunication.3.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:carecommunication:3.0
* identifier.period.start = "2021-03-23"
* identifier.use = #official 
* identifier.value = "CareCommunication.3.0"
* version = "3.0"
//* name = "CareCommunication-3.0"
* title = "care-communication-3-0-0"
* replaces.value = "Eer.fhir.MessageDefinition.CareCommunication:2.0"
* status = #draft
* date = "2023-01-06"
* copyright = "Copyright © 2023 MedCom"
//* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Thea Mentz Sørensen"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Kirsten Christiansen"
* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.value = "krc@medcom.dk" 
* contact[SubjectMatterExpert].telecom.use = #work
* description = "DK: Korrespondancemeddelelse (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.valueCodeableConcept.text = "DK: Regioner, kommuner, apoteker og primærsektoren. (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende sundhedsinformation mellem sundhedsvæsnets parter, der ikke kan sendes med andre standarder (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#care-communication-message
* responseRequired = #always
* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.Acknowledgement:2.0"
* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.Acknowledgement:2.0.1"
* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.CareCommunication:3.0"

Instance: Eer.fhir.MessageDefinition.CareCommunication:2.0
InstanceOf: MedcomMessagingMessageDefinitionFhir
Description: "An example of an MedcomMessagingMessageDefinition for CareCommunication:2.0"
* id = "Eer.fhir.MessageDefinition.CareCommunication.2.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:carecommunication:2.0
* identifier.period.start = "2021-03-23"
* identifier.period.end = "2023-01-05"
* identifier.use = #old
* identifier.value = "CareCommunication.2.0"
* version = "2.0"
//* name = "CareCommunication-2.0"
* title = "care-communication-2-0-0"
* replaces.value = "Eer.fhir.MessageDefinition.CareCommunication:1.0"
* status = #retired
* date = "2022-10-05"
* copyright = "Copyright © 2022 MedCom"
//* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Thea Mentz Sørensen"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Kirsten Christiansen"
* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.value = "krc@medcom.dk" 
* contact[SubjectMatterExpert].telecom.use = #work
* description = "DK: Korrespondancemeddelelse (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.valueCodeableConcept.text = "DK: Regioner, kommuner, apoteker og primærsektoren. (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende sundhedsinformation mellem sundhedsvæsnets parter, der ikke kan sendes med andre standarder (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#care-communication-message
* responseRequired = #always
* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.Acknowledgement:2.0"
* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.Acknowledgement:2.0.1"
* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.CareCommunication:3.0"

Instance: Eer.fhir.MessageDefinition.CareCommunication:1.0
InstanceOf: MedcomMessagingMessageDefinitionFhir
Description: "An example of an MedcomMessagingMessageDefinition for CareCommunication:1.0"
* id = "Eer.fhir.MessageDefinition.CareCommunication.1.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:carecommunication:1.0
* identifier.period.start = "2021-03-23"
* identifier.period.end = "2022-10-04"
* identifier.use = #old
* identifier.value = "CareCommunication.1.0"
* version = "1.0"
//* name = "CareCommunication-1.0"
* title = "care-communication-1-0-0"
* status = #retired
* date = "2021-03-23"
* copyright = "Copyright © 2021 MedCom"
//* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Thea Mentz Sørensen"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Kirsten Tapia Ravn Christiansen"
* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.value = "krc@medcom.dk" 
* contact[SubjectMatterExpert].telecom.use = #work
* description = "DK: Korrespondancemeddelelse (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.valueCodeableConcept.text = "DK: Regioner, kommuner, apoteker og primærsektoren. (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende sundhedsinformation mellem sundhedsvæsnets parter, der ikke kan sendes med andre standarder (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* copyright = "Copyright © 2022 MedCom"
* eventCoding = $MessageEvents#care-communication-message
* responseRequired = #always
* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.Acknowledgement:2.0"
* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.CareCommunication:3.0"

*/