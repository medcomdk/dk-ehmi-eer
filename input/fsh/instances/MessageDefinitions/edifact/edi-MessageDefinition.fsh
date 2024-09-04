/*
Instance: EHMI.edi.bin02.b0210x.MessageDefinition
InstanceOf: EerMessageDefinitionEdi
Description: "An example of an EerMessageDefinition for bin02:b0210x."
* id = "EHMI.edi.bin02.b0210x.MessageDefinition"
* url = $EerEerMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:edifact:medbin:bin02:b0210x
* identifier.system = $EerMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:edifact
* identifier.period.start = "2012-07-01"
* identifier.type = $EerMedComMessageDefinitionType#EDIFACT
* identifier.use = #official 
* identifier.value = "bin02:b0210x"
* version = "b0210x"
//* name = "Binary document transport for attachments to all referral types"
* title = "binary-document-transport-for-attachments-to-all-referral-types"
* status = #active
* date = "2020-06-26"
* copyright = "Copyright © 2022 MedCom"
* publisher = "MedCom"
* contact[InteroperabilityConsultant].id = "InteroperabilityConsultant"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Michael Johansen"
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "mjo@medcom.dk" 
* contact[InteroperabilityConsultant].telecom.use = #work
* contact[SubjectMatterExpert].id = "SubjectMatterExpert"
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Gitte Henriksen"
* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.value = "ghe@medcom.dk" 
* contact[SubjectMatterExpert].telecom.use = #work
* description = "BIN01 bliver i dag brugt til mange forskellige formål, hvoraf kun en delmængde er i form af vedhæftelse af bilag til en henvisning. Derfor indføres en ny MEDBIN-standard, BIN02, som skal bruges til vedhæftelse af bilag i forbindelse med henvisninger (REF01, REF02 og REF06). Når VANS-leverandørerne møder en BIN02, skal de sørge for at route den til henvisningshotellet (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.code = #workflow
* useContext.valueCodeableConcept.text = "Regioner, Private parter i sundhedsvæsenet, Kommuner"
* purpose = "Denne standard anvendes, når man ønsker at sende en binær fil sammen med henvisningstyperne REF01, RFE02 og REF06 (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* copyright = "Copyright © 2022 MedCom"
* eventCoding = $MessageEvents#empty-message

*/