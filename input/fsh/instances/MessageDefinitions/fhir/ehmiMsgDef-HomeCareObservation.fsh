Instance: Eer.fhir.MessageDefinition.HomeCareObservation:1.0
InstanceOf: EerMsgDefHomeCareObservation
Description: "An example of an EerMessageDefinition for HomeCareObservation:1.0"
* id = "Eer.fhir.MessageDefinition.HomeCareObservation.1.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* identifier.period.start = "2021-03-23"
* identifier.use = #official 
* identifier.value = "HomeCareObservation.1.0"
* version = "1.0"
//* name = "HomeCareObservation:1.0"
* title = "HomeCareObservation 1.0"
//* replaces.value = "Eer.fhir.MessageDefinition.HomeCareObservation:2.0"
* status = #draft
* date = "2023-01-06"
* copyright = "Copyright © 2023 MedCom"
//* publisher = "MedCom"
//InteroperabilityConsultant
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Thea Mentz Sørensen"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
//SubjectMatterExpert
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Kirsten Christiansen"
* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.value = "krc@medcom.dk" 
* contact[SubjectMatterExpert].telecom.use = #work
* description = "DK: HomeCareObservation (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.valueCodeableConcept.text = "DK: kommuner og primærsektoren. (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende sundhedsobservationer mellem kommuners akutsygepleje og en patients praktiserende læge (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#homecareobservation-message "HomeCare Observation Message"
* responseRequired = #always
* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.Acknowledgement:2.0"
* allowedResponse[+].message.value = "http://medcomfhir.dk/ig/acknowledgement/ImplementationGuide/medcom.fhir.dk.acknowledgement"
* allowedResponse[+].message.value = "http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-careCommunication-message"
