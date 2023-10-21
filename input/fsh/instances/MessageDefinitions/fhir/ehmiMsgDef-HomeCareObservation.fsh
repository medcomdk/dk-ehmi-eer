Instance: EHMI.fhir.MessageDefinition.HomeCareObservation:1.0.0
InstanceOf: EHMIMessageDefinitionFhir
Description: "An example of an EHMIMessageDefinition for HomeCareObservation:1.0.0"
* id = "EHMI.fhir.MessageDefinition.HomeCareObservation.1.0.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0.0
* identifier.period.start = "2021-03-23"
* identifier.use = #official 
* identifier.value = "HomeCareObservation.1.0.0"
* version = "1.0.0"
* name = "HomeCareObservation-1.0.0"
* title = "home-care-observation-1-0-0"
//* replaces.value = "EHMI.fhir.MessageDefinition.HomeCareObservation:2.0.0"
* status = #draft
* date = "2023-01-06"
* copyright = "Copyright © 2023 MedCom"
//* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Martha Burek"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Kirsten Christiansen"
* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.value = "krc@medcom.dk" 
* contact[SubjectMatterExpert].telecom.use = #work
* description = "DK: HomeCareObservation (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.valueCodeableConcept.text = "DK: kommuner og primærsektoren. (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: Sende sundhedsobservationer mellem kommuners akutsygepleje og en patients praktiserende læge (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#home-care-observation-message
* responseRequired = #always
* allowedResponse[+].message.value = "EHMI.fhir.MessageDefinition.Acknowledgement:2.0.0"
* allowedResponse[+].message.value = "EHMI.fhir.MessageDefinition.Acknowledgement:2.0.1"
* allowedResponse[+].message.value = "EHMI.fhir.MessageDefinition.CareCommunication:3.0.0"
