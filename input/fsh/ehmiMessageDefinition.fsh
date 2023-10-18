Profile: EHMIMessageDefinition
Parent: MessageDefinition
Description: "An example profile of the MessageDefinition resource."
//* url from ehmi-medcom-message-definition-uri-valueset
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
* replaces 0..1 MS SU
* publisher 1..1 MS SU
/* contact 1..1 MS SU
* contact[0].name = "Interoperability Consultant, Michael Johansen"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "mjo@medcom.dk" 
* contact[=].telecom.use = #work
* contact[+].name = "Subject Matter Expert, Gitte Henriksen"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "ghe@medcom.dk" 
* contact[=].telecom.use = #work
*/
//* description 1..1 MS SU
//* description.value[x] = "Natural language description of the message definition"
//* useContext 1..1 MS SU
//* useContext = "Message Context"
* jurisdiction 1..1 MS SU
* jurisdiction = #DNK
* category = #notification
* responseRequired = #always
