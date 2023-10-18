Instance: EHMI.fhir.MessageDefinition.hospitalNotification:3.0.0
InstanceOf: EHMIMessageDefinition
Description: "An example of an EHMIMessageDefinition for hospitalnotification:3.0.0"
* id = "EHMI.fhir.MessageDefinition.hospitalNotification.3.0.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:fhir:structuredefinition:hospitalnotification:3.0.0
* identifier.system = "www.medcom.dk"
* identifier.period.start = "2021-03-23"
* identifier.type = $EHMIMedComMessageDefinitionType#FHIR
* identifier.use = #official 
* identifier.value = "hospitalnotification.3.0.0"
* version = "3.0.0"
* name = "HospitalNotification 3.0.0"
* title = "hospital-notification-3-0-0"
* replaces = canonical("EHMI.fhir.MessageDefinition.hospitalNotification.2.0.0")
* status = #draft
* date = "2023-01-06"
* publisher = "MedCom"
// 2015-02-07T13:28:17-05:00
* eventCoding = $MessageEvents#hospital-notification-message
//http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes

Instance: EHMI.fhir.MessageDefinition.hospitalNotification:2.0.0
InstanceOf: EHMIMessageDefinition
Description: "An example of an EHMIMessageDefinition for hospitalnotification:2.0.0"
* id = "EHMI.fhir.MessageDefinition.hospitalNotification.2.0.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:fhir:structuredefinition:hospitalnotification:2.0.0
* identifier.system = "www.medcom.dk"
* identifier.period.start = "2021-03-23"
* identifier.period.end = "2023-01-05"
* identifier.type = $EHMIMedComMessageDefinitionType#FHIR
* identifier.use = #old
* identifier.value = "hospitalnotification.2.0.0"
* version = "2.0.0"
* name = "HospitalNotification 2.0.0"
* title = "hospital-notification-2-0-0"
* replaces = canonical("hospitalnotification.1.0.0")
* status = #retired
* date = "2022-10-05"
* publisher = "MedCom"
// 2015-02-07T13:28:17-05:00
* eventCoding = $MessageEvents#hospital-notification-message
//http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes

Instance: EHMI.fhir.MessageDefinition.hospitalNotification:1.0.0
InstanceOf: EHMIMessageDefinition
Description: "An example of an EHMIMessageDefinition for hospitalnotification:1.0.0"
* id = "EHMI.fhir.MessageDefinition.hospitalNotification.1.0.0"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:fhir:structuredefinition:hospitalnotification:1.0.0
* identifier.system = "www.medcom.dk"
* identifier.period.start = "2021-03-23"
* identifier.period.end = "2022-10-04"
* identifier.type = $EHMIMedComMessageDefinitionType#FHIR
* identifier.use = #old
* identifier.value = "hospitalnotification.1.0.0"
* version = "1.0.0"
* name = "HospitalNotification 1.0.0"
* title = "hospital-notification-1-0-0"
* status = #retired
* date = "2021-03-23"
* publisher = "MedCom"
// 2015-02-07T13:28:17-05:00
* eventCoding = $MessageEvents#hospital-notification-message
//http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes

