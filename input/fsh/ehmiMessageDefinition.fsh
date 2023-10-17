Profile: EHMIMessageDefinition
Parent: MessageDefinition
Description: "An example profile of the MessageDefinition resource."
* url from ehmi-medcom-message-definition-uri-valueset
* url 1..1 MS SU
* identifier 1..1 MS SU
//* identifier.system from ehmi-medcom-message-definition-uri-valueset
* identifier.system 1..1 MS SU
* identifier.period.start 1..1 MS SU
* identifier.period.end 0..1 MS SU
* identifier.type from ehmi-medcom-message-definition-type-valueset
* identifier.type 1..1 MS SU
* identifier.use 1..1 MS SU
* identifier.value 1..1 MS SU
* version 1..1 MS SU
* name 1..1 MS SU
* title 1..1 MS SU
* publisher 1..1 MS SU
//* contact 1..1 MS SU
* contact.telecom.value = "medcom@medcom.dk" 
* contact.name = "MedCom"
//* description 1..1 MS SU
//* description.value[x] = "Natural language description of the message definition"
//* useContext 1..1 MS SU
//* useContext = "Message Context"
* jurisdiction 1..1 MS SU
* jurisdiction = #DNK
* category = #notification
* responseRequired = #always


Instance: EHMIMessageDefinition_bin02:b0210x
InstanceOf: EHMIMessageDefinition
Description: "An example of an EHMIMessageDefinition for bin02:b0210x."
* id = "EHMIMessageDefinition01.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:edifact:mig:medbin:bin02:b0210x
* identifier.system = "www.medcom.dk"
* identifier.period.start = "2020-01-01"
* identifier.type = $EHMIMedComMessageDefinitionType#EDIFACT
* identifier.use = #official 
* identifier.value = "bin02:b0210x"
* version = "b0210x"
* name = "Binary document transport for attachments to all referral types"
* title = "binary-document-transport-for-attachments-to-all-referral-types"
* status = #draft
* date = "2023-01-01"
* publisher = "MedCom"
// 2015-02-07T13:28:17-05:00
* eventCoding = $MessageEvents#empty-message
//http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes