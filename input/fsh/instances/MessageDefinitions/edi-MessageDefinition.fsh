Instance: EHMI.edi.bin02.b0210x.MessageDefinition
InstanceOf: EHMIMessageDefinition
Description: "An example of an EHMIMessageDefinition for bin02:b0210x."
* id = "EHMI.edi.bin02.b0210x.MessageDefinition"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:edifact:medbin:bin02:b0210x
* identifier.system = "www.medcom.dk"
* identifier.period.start = "2012-07-01"
* identifier.type = $EHMIMedComMessageDefinitionType#EDIFACT
* identifier.use = #official 
* identifier.value = "bin02:b0210x"
* version = "b0210x"
* name = "Binary document transport for attachments to all referral types"
* title = "binary-document-transport-for-attachments-to-all-referral-types"
* status = #active
* date = "2020-06-26"
* publisher = "MedCom"
* copyright = "Copyright © 2022 MedCom"
* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Michael Johansen"
//* contact[=].telecom.system = #email
* contact[=].telecom.value = "mjo@medcom.dk" 
//* contact[=].telecom.use = #work
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Gitte Henriksen"
//* contact[=].telecom.system = #email
* contact[=].telecom.value = "ghe@medcom.dk" 
//* contact[=].telecom.use = #work
* eventCoding = $MessageEvents#empty-message
