Instance: EHMI.fhir.MessageDefinition.CareCommunication:3.0.0
InstanceOf: EHMIMessageDefinition_fhir
Description: "An example of an EHMIMessageDefinition for CareCommunication:3.0.0"
* id = "EHMI.fhir.MessageDefinition.CareCommunication.3.0.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:carecommunication:3.0.0
* identifier.period.start = "2021-03-23"
* identifier.use = #official 
* identifier.value = "CareCommunication.3.0.0"
* version = "3.0.0"
* name = "CareCommunication-3.0.0"
* title = "care-communication-3-0-0"
* replaces.value = "EHMI.fhir.MessageDefinition.CareCommunication:2.0.0"
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
* useContext.code = #workflow
* useContext.valueCodeableConcept.text = "DK: Regioner, kommuner, apoteker og primærsektoren. (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende sundhedsinformation mellem sundhedsvæsnets parter, der ikke kan sendes med andre standarder (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#care-communication-message

Instance: EHMI.fhir.MessageDefinition.CareCommunication:2.0.0
InstanceOf: EHMIMessageDefinition_fhir
Description: "An example of an EHMIMessageDefinition for CareCommunication:2.0.0"
* id = "EHMI.fhir.MessageDefinition.CareCommunication.2.0.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:carecommunication:2.0.0
* identifier.period.start = "2021-03-23"
* identifier.period.end = "2023-01-05"
* identifier.use = #old
* identifier.value = "CareCommunication.2.0.0"
* version = "2.0.0"
* name = "CareCommunication-2.0.0"
* title = "care-communication-2-0-0"
* replaces.value = "EHMI.fhir.MessageDefinition.CareCommunication:1.0.0"
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
* useContext.code = #workflow
* useContext.valueCodeableConcept.text = "DK: Regioner, kommuner, apoteker og primærsektoren. (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende sundhedsinformation mellem sundhedsvæsnets parter, der ikke kan sendes med andre standarder (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#care-communication-message

Instance: EHMI.fhir.MessageDefinition.CareCommunication:1.0.0
InstanceOf: EHMIMessageDefinition_fhir
Description: "An example of an EHMIMessageDefinition for CareCommunication:1.0.0"
* id = "EHMI.fhir.MessageDefinition.CareCommunication.1.0.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:carecommunication:1.0.0
* identifier.period.start = "2021-03-23"
* identifier.period.end = "2022-10-04"
* identifier.use = #old
* identifier.value = "CareCommunication.1.0.0"
* version = "1.0.0"
* name = "CareCommunication-1.0.0"
* title = "care-communication-1-0-0"
* status = #retired
* date = "2021-03-23"
* copyright = "Copyright © 2021 MedCom"
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
* useContext.code = #workflow
* useContext.valueCodeableConcept.text = "DK: Regioner, kommuner, apoteker og primærsektoren. (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende sundhedsinformation mellem sundhedsvæsnets parter, der ikke kan sendes med andre standarder (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* copyright = "Copyright © 2022 MedCom"
* eventCoding = $MessageEvents#care-communication-message

