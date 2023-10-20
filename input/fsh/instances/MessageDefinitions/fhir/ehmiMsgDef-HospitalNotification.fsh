Instance: EHMI.fhir.MessageDefinition.hospitalNotification:3.0.0
InstanceOf: EHMIMessageDefinition_fhir
Description: "An example of an EHMIMessageDefinition for hospitalnotification:3.0.0"
* id = "EHMI.fhir.MessageDefinition.hospitalNotification.3.0.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:hospitalnotification:3.0.0
* identifier.period.start = "2021-03-23"
* identifier.use = #official 
* identifier.value = "hospitalnotification.3.0.0"
* version = "3.0.0"
* name = "HospitalNotification-3.0.0"
* title = "hospital-notification-3-0-0"
* replaces.value = "EHMI.fhir.MessageDefinition.hospitalNotification:2.0.0"
* status = #draft
* date = "2023-01-06"
* copyright = "Copyright © 2023 MedCom"
//* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Thea Mentz Sørensen"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Mie Borch Dahl Ballegaard"
* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.value = "mbk@medcom.dk" 
* contact[SubjectMatterExpert].telecom.use = #work
* description = "DK: Advis om sygehusophold (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.code = #workflow
* useContext.valueCodeableConcept.text = "DK: Regioner sender og kommuner modtager (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende information fra sygehus til kommune, når patient opholder sig på sygehuset, enten indlagt eller andet fysisk ophold (fx på et ambulatorium) (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#hospital-notification-message

Instance: EHMI.fhir.MessageDefinition.hospitalNotification:2.0.0
InstanceOf: EHMIMessageDefinition_fhir
Description: "An example of an EHMIMessageDefinition for hospitalnotification:2.0.0"
* id = "EHMI.fhir.MessageDefinition.hospitalNotification.2.0.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:hospitalnotification:2.0.0
* identifier.period.start = "2021-03-23"
* identifier.period.end = "2023-01-05"
* identifier.use = #old
* identifier.value = "hospitalnotification.2.0.0"
* version = "2.0.0"
* name = "HospitalNotification-2.0.0"
* title = "hospital-notification-2-0-0"
* replaces.value = "EHMI.fhir.MessageDefinition.hospitalNotification:1.0.0"
* status = #retired
* date = "2022-10-05"
* copyright = "Copyright © 2022 MedCom"
//* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Thea Mentz Sørensen"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Mie Borch Dahl Ballegaard"
* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.value = "mbk@medcom.dk" 
* contact[SubjectMatterExpert].telecom.use = #work
* description = "DK: Advis om sygehusophold (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.code = #workflow
* useContext.valueCodeableConcept.text = "DK: Regioner sender og kommuner modtager (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende information fra sygehus til kommune, når patient opholder sig på sygehuset, enten indlagt eller andet fysisk ophold (fx på et ambulatorium) (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#hospital-notification-message

Instance: EHMI.fhir.MessageDefinition.hospitalNotification:1.0.0
InstanceOf: EHMIMessageDefinition_fhir
Description: "An example of an EHMIMessageDefinition for hospitalnotification:1.0.0"
* id = "EHMI.fhir.MessageDefinition.hospitalNotification.1.0.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:hospitalnotification:1.0.0
* identifier.period.start = "2021-03-23"
* identifier.period.end = "2022-10-04"
* identifier.use = #old
* identifier.value = "hospitalnotification.1.0.0"
* version = "1.0.0"
* name = "HospitalNotification-1.0.0"
* title = "hospital-notification-1-0-0"
* status = #retired
* date = "2021-03-23"
* copyright = "Copyright © 2021 MedCom"
//* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Thea Mentz Sørensen"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Mie Borch Dahl Ballegaard"
* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.value = "mbk@medcom.dk" 
* contact[SubjectMatterExpert].telecom.use = #work
* description = "DK: Advis om sygehusophold (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.code = #workflow
* useContext.valueCodeableConcept.text = "DK: Regioner sender og kommuner modtager (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende information fra sygehus til kommune, når patient opholder sig på sygehuset, enten indlagt eller andet fysisk ophold (fx på et ambulatorium) (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* copyright = "Copyright © 2022 MedCom"
* eventCoding = $MessageEvents#hospital-notification-message

